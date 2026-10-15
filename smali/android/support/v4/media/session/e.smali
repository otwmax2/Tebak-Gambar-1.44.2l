###### Class android.support.v4.media.session.e (android.support.v4.media.session.e)
.class Landroid/support/v4/media/session/e;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/e$b;,
        Landroid/support/v4/media/session/e$a;,
        Landroid/support/v4/media/session/e$c;
    }
.end annotation


# direct methods
.method public static a(Landroid/support/v4/media/session/e$a;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance v0, Landroid/support/v4/media/session/e$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/e$b;-><init>(Landroid/support/v4/media/session/e$a;)V

    return-object v0
.end method

###### Class android.support.v4.media.session.e.a (android.support.v4.media.session.e$a)
.class public interface abstract Landroid/support/v4/media/session/e$a;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract E0(Landroid/os/Bundle;)V
.end method

.method public abstract I0(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract V0(Ljava/lang/CharSequence;)V
.end method

.method public abstract Y0()V
.end method

.method public abstract a(Ljava/lang/Object;)V
.end method

.method public abstract b(IIIII)V
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

###### Class android.support.v4.media.session.e.b (android.support.v4.media.session.e$b)
.class Landroid/support/v4/media/session/e$b;
.super Landroid/media/session/MediaController$Callback;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/e$a;",
        ">",
        "Landroid/media/session/MediaController$Callback;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/support/v4/media/session/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/e$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    return-void
.end method


# virtual methods
.method public onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .registers 8

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    move-result v1

    .line 2
    invoke-static {p1}, Landroid/support/v4/media/session/e$c;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getVolumeControl()I

    move-result v3

    .line 3
    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v5

    .line 4
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/media/session/e$a;->b(IIIII)V

    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .registers 3

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/e$a;->E0(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/e$a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/e$a;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/e$a;->I0(Ljava/util/List;)V

    return-void
.end method

.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
    .registers 3

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/e$a;->V0(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSessionDestroyed()V
    .registers 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0}, Landroid/support/v4/media/session/e$a;->Y0()V

    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-static {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroid/support/v4/media/session/e$b;->a:Landroid/support/v4/media/session/e$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/e$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

###### Class android.support.v4.media.session.e.c (android.support.v4.media.session.e$c)
.class public Landroid/support/v4/media/session/e$c;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# direct methods
.method public static a(Ljava/lang/Object;)Landroid/media/AudioAttributes;
    .registers 1

    .line 1
    check-cast p0, Landroid/media/session/MediaController$PlaybackInfo;

    invoke-virtual {p0}, Landroid/media/session/MediaController$PlaybackInfo;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/support/v4/media/session/e$c;->a(Ljava/lang/Object;)Landroid/media/AudioAttributes;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/support/v4/media/session/e$c;->c(Landroid/media/AudioAttributes;)I

    move-result p0

    return p0
.end method

.method private static c(Landroid/media/AudioAttributes;)I
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 p0, 0x7

    return p0

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v0

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_14

    const/4 p0, 0x6

    return p0

    .line 3
    :cond_14
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2b

    packed-switch p0, :pswitch_data_2c

    const/4 p0, 0x3

    return p0

    :pswitch_21
    const/4 p0, 0x2

    return p0

    :pswitch_23
    const/4 p0, 0x5

    return p0

    :pswitch_25
    return v2

    :pswitch_26
    const/16 p0, 0x8

    return p0

    :pswitch_29
    const/4 p0, 0x0

    return p0

    :cond_2b
    return v1

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_29
        :pswitch_26
        :pswitch_25
        :pswitch_23
        :pswitch_21
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method
