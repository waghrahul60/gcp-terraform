public class thread implements Runnable {

    public static void main(String[] args)
    {
        Thread t = new Thread(new thread());
        t.run();
        t.run();
        t.start();
    }
    @Override
    public void run() {
        System.out.println("a");

    }
    
}
