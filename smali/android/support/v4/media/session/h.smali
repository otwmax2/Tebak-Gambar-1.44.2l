###### Class android.support.v4.media.session.h (android.support.v4.media.session.h)
.class Landroid/support/v4/media/session/h;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi22.java"


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/os/Bundle;
    .registers 1

    .line 1
    check-cast p0, Landroid/media/session/PlaybackState;

    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
