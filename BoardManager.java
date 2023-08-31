package my.board;

import java.util.Scanner;

public class BoardManager {
    private Scanner scanner;

    public BoardManager() {
        scanner = new Scanner(System.in);
    }

    public void mainMenu() {
        System.out.println();
        System.out.println("-----------------------------------------------------------------------");
        System.out.println("메인메뉴: 1.Create | 2.Read | 3.Clear | 4.Exit");
        System.out.print("메뉴선택: ");
        String menuNo = scanner.nextLine();
        System.out.println();

        switch (menuNo) {
            case "1" -> create();
            case "2" -> read();
            case "3" -> clear();
            case "4" -> exit();
            default -> System.out.println("Invalid choice.");
        }
    }

    private Object exit() {
		// TODO Auto-generated method stub
		return null;
	}

	private Object clear() {
		// TODO Auto-generated method stub
		return null;
	}

	public void create() {
        Board board = new Board();
        System.out.println("[새 게시물 입력]");
        System.out.print("제목: ");
        board.setBtitle(scanner.nextLine());
        System.out.print("내용: ");
        board.setBcontent(scanner.nextLine());
        System.out.print("글쓴이: ");
        board.setBwriter(scanner.nextLine());

        // You would need to implement database interaction code here to save the board.
        
        list();
    }

    public void read() {
        System.out.println("[게시물 읽기]");
        System.out.print("bno: ");
        int bno = Integer.parseInt(scanner.nextLine());

        // You would need to implement database interaction code here to retrieve the board.
        Board board = getBoardById(bno);
        if (board != null) {
            printBoardDetails(board);

            System.out.println("보조메뉴: 1.Update | 2.Delete | 3.List");
            System.out.print("메뉴선택: ");
            String menuNo = scanner.nextLine();

            switch (menuNo) {
                case "1" -> update(board);
                case "2" -> delete(board);
                case "3" -> list();
                default -> System.out.println("Invalid choice.");
            }
        } else {
            System.out.println("게시물을 찾을 수 없습니다.");
        }
    }

    // ... (Other methods like update, delete, list, etc.)

    private Object list() {
		// TODO Auto-generated method stub
		return null;
	}

	private Object delete(Board board) {
		// TODO Auto-generated method stub
		return null;
	}

	private Object update(Board board) {
		// TODO Auto-generated method stub
		return null;
	}

	private void printBoardDetails(Board board) {
        System.out.println("#############");
        System.out.println("번호: " + board.getBno());
        System.out.println("제목: " + board.getBtitle());
        System.out.println("내용: " + board.getBcontent());
        System.out.println("쓴이: " + board.getBwriter());
        System.out.println("날짜: " + board.getBdate());
    }

    private Board getBoardById(int bno) {
        // Implement logic to retrieve the board from the database by its ID.
        // Return the board object or null if not found.
        return null;
    }

    // ... (Other methods and the exit method)
}
