/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author benz
 */
public class GameTableTest {
    
    public GameTableTest() {
        
    }
    
    @Test
    public void testSomeMethod() {
        String str = "aaa";
        assertEquals(str, str);
    }
    public void addSymbolinTable11(){
        GameTable gameTable = new GameTable();
        char[][] tableResult = gameTable.addSymbol(1,1,'x');
        char[][] table = new char[3][3];
        table[1][1] = 'x';
        assertArrayEquals(table, tableResult);
        
    }
}
