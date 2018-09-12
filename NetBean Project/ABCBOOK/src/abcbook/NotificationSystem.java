package abcbook;

import java.awt.AWTException;
import java.awt.MenuItem;
import java.awt.PopupMenu;
import java.awt.SystemTray;
import java.awt.TrayIcon;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.ImageIcon;

public class NotificationSystem {

    static TrayIcon trayIcon = new TrayIcon((new ImageIcon(NotificationSystem.class.getResource("icon.png"))).getImage(), "ABC");

    final SystemTray tray = SystemTray.getSystemTray();

    public void systemTrayGUI() {
        //Check the SystemTray support
        if (!SystemTray.isSupported()) {
            System.out.println("SystemTray is not supported");
            return;
        }
        final PopupMenu popup = new PopupMenu();

        // Create a popup menu components
        MenuItem aboutItem = new MenuItem("About");
        MenuItem exitItem = new MenuItem("Exit");

        //Add components to popup menu
        popup.add(aboutItem);
        popup.addSeparator();
        popup.add(exitItem);

        trayIcon.setImageAutoSize(true);
        trayIcon.setPopupMenu(popup);

        try {
            tray.add(trayIcon);
        } catch (AWTException e) {
            System.out.println("TrayIcon could not be added.");
            return;
        }

        
        exitItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                //trayIcon.displayMessage("Sun TrayIcon Demo", "This is an ordinary message", TrayIcon.MessageType.WARNING);
                tray.remove(trayIcon);
                System.exit(0);
            }
        });
        
        aboutItem.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {

                AboutUs frame = new AboutUs();
                frame.setVisible(true);
                frame.setLocationRelativeTo(null);
                frame.setAlwaysOnTop(true);

            }
        });
        
        trayIcon.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                
            trayIcon.displayMessage("Good", "System is working fine", TrayIcon.MessageType.INFO);

            }
        });

    }

    public void notificationMessage(String title, String msg, String type) {
        if (type == "none") {
            trayIcon.displayMessage(title, msg, TrayIcon.MessageType.NONE);
        } else if (type == "info") {
            trayIcon.displayMessage(title, msg, TrayIcon.MessageType.INFO);
        } else if (type == "error") {
            trayIcon.displayMessage(title, msg, TrayIcon.MessageType.ERROR);
        } else if (type == "warning") {
            trayIcon.displayMessage(title, msg, TrayIcon.MessageType.WARNING);
        }

    }

    public void exitTrayIcon() {
        tray.remove(trayIcon);
    }
}
