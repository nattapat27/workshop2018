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

    private char table[][];
    private int scorePlayer1;
    private int scorePlayer2;
    private int scoreTie;
    private int turn;

    public char[][] getTable() {
        return table;
    }

    public void setTable(char[][] table) {
        this.table = table;
    }

    public int getScorePlayer1() {
        return scorePlayer1;
    }

    public void setScorePlayer1(int scorePlayer1) {
        this.scorePlayer1 = scorePlayer1;
    }

    public int getScorePlayer2() {
        return scorePlayer2;
    }

    public void setScorePlayer2(int scorePlayer2) {
        this.scorePlayer2 = scorePlayer2;
    }

    public int getScoreTie() {
        return scoreTie;
    }

    public void setScoreTie(int scoreTie) {
        this.scoreTie = scoreTie;
    }

    public int getTurn() {
        return turn;
    }

    public void setTurn(int turn) {
        this.turn = turn;
    }
    
    public GameTable() {
        initialValue();
        createTable();
    }
    
    public  void initialValue() {
        this.scorePlayer1 = 0;
        this.scorePlayer2 = 0;
        this.scoreTie = 0;
        this.turn = 0;
    }
    
    public void createTable() {
        table = new char[3][3];
    }

    public boolean isHorizontalWin(char array[][], int row, int column, char symbol) {
        boolean result = false;
        if (array[row][0] == symbol) {
            if (array[row][1] == symbol) {
                if (array[row][2] == symbol) {
                    return true;
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

    char[][] addSymbol(int r, int c, char symbol) {
        table[r][c] = symbol;
        return table;
    }
    
    public boolean isVerticalWin(char array[][], int row, int column, char symbol) {
        boolean result = false;
        if (array[0][column] == symbol) {
            if (array[1][column] == symbol) {
                if (array[2][column] == symbol) {
                    return true;
                }
            }
        }
        return result;
    }
}
