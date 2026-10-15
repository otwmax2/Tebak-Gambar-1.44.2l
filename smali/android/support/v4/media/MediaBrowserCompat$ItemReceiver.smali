###### Class android.support.v4.media.MediaBrowserCompat$ItemReceiver (android.support.v4.media.MediaBrowserCompat$ItemReceiver)
.class Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Lc/b;
.source "MediaBrowserCompat.java"


# virtual methods
.method protected h(ILandroid/os/Bundle;)V
    .registers 5

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1f

    if-eqz p2, :cond_1f

    const-string p1, "media_item"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4
    instance-of p2, p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    if-eqz p2, :cond_1b

    goto :goto_1c

    .line 5
    :cond_1b
    throw v0

    .line 6
    :cond_1c
    :goto_1c
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    throw v0

    .line 7
    :cond_1f
    throw v0
.end method
