###### Class android.support.v4.media.MediaBrowserCompat$SearchResultReceiver (android.support.v4.media.MediaBrowserCompat$SearchResultReceiver)
.class Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Lc/b;
.source "MediaBrowserCompat.java"


# virtual methods
.method protected h(ILandroid/os/Bundle;)V
    .registers 7

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-nez p1, :cond_2a

    if-eqz p2, :cond_2a

    const-string p1, "search_results"

    .line 2
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1d
    if-ge v2, v1, :cond_29

    aget-object v3, p1, v2

    .line 6
    check-cast v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 7
    :cond_29
    throw v0

    .line 8
    :cond_2a
    goto :goto_2c

    :goto_2b
    throw v0

    :goto_2c
    goto :goto_2b
.end method
