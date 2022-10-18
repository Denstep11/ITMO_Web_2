import model.CoordinateCheck;
import model.CoordinateSave;
import model.TableDate;
import model.ValidateCoords;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet("/area")
public class AreaCheckServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Date start_time = new Date();
        long start = start_time.getTime();

        String x = request.getParameter("coor_x");
        String y = request.getParameter("coor_y").replace(',','.');
        String r = request.getParameter("value_R");

        ValidateCoords validateCoords = new ValidateCoords(x, y, r);
        CoordinateCheck coordinateCheck = new CoordinateCheck(x, y, r);

        if (validateCoords.checkCorrectValue()) {
            CoordinateSave coordinateSave = new CoordinateSave(x, y, r, start, coordinateCheck.result());
            String str_table_value = coordinateSave.getTableValue().toString();
            TableDate.tableValue.addValue(str_table_value);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
