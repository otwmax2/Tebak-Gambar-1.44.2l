package com.tebakgambar.model;

/* JADX INFO: loaded from: classes2.dex */
public class Homes {

    @b7.c("exit_popup")
    public ExitPopUp exitPopUp;
    public Floating floating;

    @b7.c("force_update")
    public ForceUpdate forceUpdate;
    public HomeData home;
    public Messages message;

    public static class ExitPopUp {
        public String image;
        public String negative;
        public String positive;
        public String url;
    }

    public static class Floating {
        public String icon_url;
        public int id;
        public String url;
    }

    public static class HomeData {
        public String background;
        public String color;
        public String deeplink;
        public String end_date;
        public String icon;
        public String id;
        public String title;
    }

    public static class Messages {
        public String end_date;
        public String id;
        public String image;
        public String message;
        public String title;
        public String type;
        public String url;
    }
}
