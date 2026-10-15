package com.tebakgambar.model;

import com.tebakgambar.database.SliderDatabase;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Slider {

    @b7.c("SliderID")
    public int id;

    @b7.c("Images")
    public List<Image> images;

    @b7.c("Type")
    public String type;

    public class Image {

        @b7.c("BackgroundColor")
        public String backgroundColor;

        @b7.c("TitleButton")
        public String buttonTitle;

        @b7.c("ImageURL")
        public String imageUrl;

        public Image() {
        }
    }

    public static Slider fromId(int i10) {
        return SliderDatabase.C().D().c(i10);
    }
}
