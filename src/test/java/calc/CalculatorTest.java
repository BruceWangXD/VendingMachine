package calc;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import org.junit.jupiter.api.BeforeAll;



class CalculatorTest {

    private static Calculator calcObj;

    @Test

    void testAdd() {

        assertEquals(3, calcObj.add(1, 2));

    }

    @BeforeAll

    public static void calcCreation(){

        calcObj = new Calculator();

    }

    @Test
    void testDiv() {
        boolean error = false;
        assertEquals(1, calcObj.div(2,2));
        try{
            calcObj.div(1,0);
        } catch (ArithmeticException e) {
            error = true;
        }
        assertTrue(error);
    }


}