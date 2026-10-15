###### Class android.support.v4.media.c (android.support.v4.media.c)
.class Landroid/support/v4/media/c;
.super Ljava/lang/Object;
.source "MediaMetadataCompatApi21.java"


# direct methods
.method public static a(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    check-cast p0, Landroid/media/MediaMetadata;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
