/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Arrays;

/**
 *
 * @author benz
 */
public class GameTable {

    private Arrays table[][];
    private int scorePlayer1;
    private int scorePlayer2;
    private int scoreTie;
    private int turn;

    public  void initialValue() {
        this.scorePlayer1 = 0;
        this.scorePlayer2 = 0;
        this.scoreTie = 0;
        this.turn = 0;
    }
    
    public void createTable() {
        table = new Arrays[3][3];
    }

    public boolean isHorizontalWin(char array[][], int row, int column, char symbol) {
        boolean result = false;
        if (array[row][0] == symbol) {
            if (array[row][1] == symbol) {
                if (array[row][2] == symbol) {

                }
            }
        }
        return result;
    }
    
    public boolean isNotFull(int turn) {
        boolean result = false;
        if (turn != 9) {
            result = true;
        }

        return result;
    }
    
    public void plusTie(){
        this.scoreTie++;
    }
}
