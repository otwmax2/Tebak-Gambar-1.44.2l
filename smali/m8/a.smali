###### Class m8.a (m8.a)
.class public Lm8/a;
.super Ljava/lang/Object;
.source "GameManager.java"

# interfaces
.implements Lcom/tebakgambar/component/b$c;


# static fields
.field public static A:I = 0x0

.field private static B:Lm8/a; = null
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static s:Ljava/lang/String; = "firebase-login-dialog-last-shown-millis"

.field private static t:Ljava/lang/String; = "firebase-login-synced"

.field private static u:Ljava/lang/String; = "life-new-inited"

.field private static v:Ljava/lang/String; = "life"

.field private static w:Ljava/lang/String; = "life-last-milis"

.field private static x:Ljava/lang/String; = "life-target-milis"

.field private static y:Ljava/lang/String; = "story-showed"

.field public static z:I = 0x5


# instance fields
.field private o:I

.field private p:Lm8/d;

.field private q:Lcom/tebakgambar/model/GameData;

.field private r:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lm8/a;->o:I

    .line 3
    iput-object p1, p0, Lm8/a;->r:Landroid/content/Context;

    return-void
.end method

.method private B(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->w:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Ly8/y;->t0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private C(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->x:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Ly8/y;->t0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private a(I)V
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    sget v2, Lm8/a;->z:I

    const-wide/16 v3, 0x0

    if-ge p1, v2, :cond_1e

    invoke-virtual {p0}, Lm8/a;->j()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_1e

    .line 3
    invoke-direct {p0, v0, v1}, Lm8/a;->B(J)V

    .line 4
    invoke-direct {p0}, Lm8/a;->h()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lm8/a;->C(J)V

    goto :goto_28

    .line 5
    :cond_1e
    sget v0, Lm8/a;->z:I

    if-ne p1, v0, :cond_28

    .line 6
    invoke-direct {p0, v3, v4}, Lm8/a;->C(J)V

    .line 7
    invoke-direct {p0, v3, v4}, Lm8/a;->B(J)V

    :cond_28
    :goto_28
    return-void
.end method

.method public static f()Lm8/a;
    .registers 2

    .line 1
    sget-object v0, Lm8/a;->B:Lm8/a;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Game Saver must be initialized first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()J
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->i()Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    const-string v1, "v1_reload_life_timer"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->k(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_15

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    return-wide v0

    :cond_15
    const-wide/32 v0, 0x927c0

    return-wide v0
.end method

.method public static l(Landroid/content/Context;)V
    .registers 4

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GAMESAVER_HANDLER"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance v1, Lm8/a;

    invoke-direct {v1, p0}, Lm8/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lm8/a;->B:Lm8/a;

    .line 4
    new-instance v2, Lm8/d;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Lm8/d;-><init>(Landroid/os/Looper;)V

    iput-object v2, v1, Lm8/a;->p:Lm8/d;

    .line 5
    sget-object v0, Lm8/a;->B:Lm8/a;

    new-instance v1, Lcom/tebakgambar/model/GameData;

    invoke-direct {v1, p0}, Lcom/tebakgambar/model/GameData;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    .line 6
    sget-object v0, Lm8/a;->u:Ljava/lang/String;

    invoke-static {p0, v0}, Ly8/y;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 7
    sget-object v0, Lm8/a;->B:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lm8/a;->a(I)V

    .line 8
    sget-object v0, Lm8/a;->u:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Ly8/y;->s0(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9
    :cond_3c
    sget-object p0, Lm8/a;->B:Lm8/a;

    invoke-virtual {p0}, Lm8/a;->p()Z

    move-result p0

    if-nez p0, :cond_49

    .line 10
    sget-object p0, Lm8/a;->B:Lm8/a;

    invoke-virtual {p0}, Lm8/a;->m()V

    :cond_49
    return-void
.end method

.method private n(J)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lm8/a;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    return-void

    .line 2
    :cond_b
    invoke-direct {p0}, Lm8/a;->h()J

    move-result-wide v2

    add-long v4, v0, v2

    cmp-long v6, p1, v4

    if-ltz v6, :cond_26

    sub-long/2addr p1, v0

    .line 3
    div-long/2addr p1, v2

    long-to-int p2, p1

    .line 4
    sget p1, Lm8/a;->z:I

    invoke-virtual {p0}, Lm8/a;->g()I

    move-result v0

    add-int/2addr v0, p2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lm8/a;->A(I)V

    :cond_26
    return-void
.end method

.method private u(I)V
    .registers 13

    .line 1
    invoke-static {}, Li1/t;->d()Li1/t;

    move-result-object v0

    .line 2
    sget v1, Lm8/a;->z:I

    const-string v2, "tg-life-countdown"

    if-ne p1, v1, :cond_f

    .line 3
    invoke-virtual {v0, v2}, Li1/t;->a(Ljava/lang/String;)Li1/m;

    goto/16 :goto_a0

    .line 4
    :cond_f
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v4, Lcom/tebakgambar/model/TimedDialogModel;

    invoke-direct {v4}, Lcom/tebakgambar/model/TimedDialogModel;-><init>()V

    .line 7
    iget-object v5, p0, Lm8/a;->r:Landroid/content/Context;

    const v6, 0x7f120025

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tebakgambar/model/DialogModel;->titleMessage:Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lm8/a;->r:Landroid/content/Context;

    const v6, 0x7f1201c9

    .line 9
    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tebakgambar/model/DialogModel;->message:Ljava/lang/String;

    iput-object v5, v4, Lcom/tebakgambar/model/TimedDialogModel;->subtitle:Ljava/lang/String;

    const-string v5, "1"

    .line 10
    iput-object v5, v4, Lcom/tebakgambar/model/TimedDialogModel;->pushActionId:Ljava/lang/String;

    .line 11
    iget-object v5, p0, Lm8/a;->r:Landroid/content/Context;

    const v6, 0x7f120143

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tebakgambar/model/DialogModel;->buttonPositive:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Lm8/a;->j()J

    move-result-wide v5

    sget v7, Lm8/a;->z:I

    sub-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v7, p1

    invoke-direct {p0}, Lm8/a;->h()J

    move-result-wide v9

    mul-long v7, v7, v9

    add-long/2addr v5, v7

    iput-wide v5, v4, Lcom/tebakgambar/model/TimedDialogModel;->time:J

    .line 13
    new-instance p1, Landroidx/work/b$a;

    invoke-direct {p1}, Landroidx/work/b$a;-><init>()V

    .line 14
    invoke-virtual {v1, v4}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "json"

    invoke-virtual {p1, v5, v1}, Landroidx/work/b$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object p1

    .line 16
    new-instance v1, Li1/l$a;

    const-class v5, Lcom/tebakgambar/service/LocalNotificationWorker;

    invoke-direct {v1, v5}, Li1/l$a;-><init>(Ljava/lang/Class;)V

    .line 17
    invoke-virtual {v1, v2}, Li1/u$a;->a(Ljava/lang/String;)Li1/u$a;

    move-result-object v1

    check-cast v1, Li1/l$a;

    iget-wide v4, v4, Lcom/tebakgambar/model/TimedDialogModel;->time:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Li1/u$a;->f(JLjava/util/concurrent/TimeUnit;)Li1/u$a;

    move-result-object v1

    check-cast v1, Li1/l$a;

    .line 19
    invoke-virtual {v1, p1}, Li1/u$a;->g(Landroidx/work/b;)Li1/u$a;

    move-result-object p1

    check-cast p1, Li1/l$a;

    .line 20
    invoke-virtual {p1}, Li1/u$a;->b()Li1/u;

    move-result-object p1

    check-cast p1, Li1/l;

    .line 21
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v0, v2}, Li1/t;->a(Ljava/lang/String;)Li1/m;

    .line 23
    invoke-virtual {v0, v3}, Li1/t;->c(Ljava/util/List;)Li1/m;

    :goto_a0
    return-void
.end method


# virtual methods
.method public A(I)V
    .registers 5

    .line 1
    sget v0, Lm8/a;->A:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    sget v0, Lm8/a;->z:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {p0, p1}, Lm8/a;->a(I)V

    .line 4
    iget-object v1, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v2, Lm8/a;->v:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Ly8/y;->u0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    iput-object v0, v1, Lcom/tebakgambar/model/GameData;->life:Ljava/lang/String;

    .line 6
    iput p1, p0, Lm8/a;->o:I

    .line 7
    invoke-virtual {p0}, Lm8/a;->t()V

    .line 8
    invoke-direct {p0, p1}, Lm8/a;->u(I)V

    return-void
.end method

.method public D(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->y:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ly8/y;->s0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lm8/a;->g()I

    move-result v0

    if-lez v0, :cond_b

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lm8/a;->A(I)V

    :cond_b
    return-void
.end method

.method public c()J
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->K(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Lcom/tebakgambar/model/GameData;
    .registers 2

    .line 1
    iget-object v0, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    return-object v0
.end method

.method public e(J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lm8/a;->n(J)V

    return-void
.end method

.method public g()I
    .registers 4

    .line 1
    iget v0, p0, Lm8/a;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    .line 2
    :try_start_7
    iget-object v1, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v2, Lm8/a;->v:Ljava/lang/String;

    invoke-static {v1, v2}, Ly8/y;->L(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    .line 6
    :cond_21
    :goto_21
    iput v0, p0, Lm8/a;->o:I

    return v0
.end method

.method public i()J
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->w:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->K(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->x:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->K(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lm8/a;->g()I

    move-result v0

    .line 2
    sget v1, Lm8/a;->z:I

    if-ge v0, v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lm8/a;->A(I)V

    :cond_d
    return-void
.end method

.method public m()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    const-string v1, "true"

    .line 2
    invoke-static {v0, v1}, Ly8/y;->A0(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    sget v1, Lm8/a;->z:I

    invoke-virtual {p0, v1}, Lm8/a;->A(I)V

    const-string v1, "1"

    .line 4
    invoke-static {v0, v1}, Ly8/y;->o0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public o()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public p()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lm8/a;->v:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Ly8/y;->J(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    .line 2
    sget v1, Lm8/a;->z:I

    invoke-virtual {p0, v1}, Lm8/a;->A(I)V

    const-string v1, ""

    .line 3
    invoke-static {v0, v1}, Ly8/y;->o0(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "1"

    .line 4
    invoke-static {v0, v1}, Ly8/y;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    sget-object v1, Ly8/y;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    .line 6
    sget-object v1, Ly8/y;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    .line 7
    sget-object v1, Ly8/y;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    const/4 v1, 0x1

    const-string v2, "5"

    .line 8
    invoke-static {v0, v1, v2}, Ly8/y;->k0(Landroid/content/Context;ILjava/lang/String;)V

    .line 9
    new-instance v0, Lcom/tebakgambar/model/GameData;

    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tebakgambar/model/GameData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    return-void
.end method

.method public s(Lcom/tebakgambar/model/GameData;)V
    .registers 8

    .line 1
    invoke-static {}, Lcom/tebakgambar/TGApplication;->d()Lcom/tebakgambar/TGApplication;

    move-result-object v0

    .line 2
    sget-object v1, Ly8/y;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    .line 3
    sget-object v1, Ly8/y;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    .line 4
    sget-object v1, Ly8/y;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Ly8/y;->k(Ljava/lang/String;Landroid/content/Context;)V

    .line 5
    :try_start_13
    iget-object v1, p1, Lcom/tebakgambar/model/GameData;->life:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 6
    invoke-virtual {p0, v1}, Lm8/a;->A(I)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 8
    :goto_21
    iget-object v1, p1, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ly8/y;->o0(Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    iget v2, v1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Lcom/tebakgambar/model/request/LevelStructure2;->hint:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ly8/y;->k0(Landroid/content/Context;ILjava/lang/String;)V

    .line 11
    iget v2, v1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    invoke-virtual {v1}, Lcom/tebakgambar/model/request/LevelStructure2;->getListLevel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ly8/y;->q0(Landroid/content/Context;ILjava/lang/String;)V

    .line 12
    iput-object p1, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    .line 13
    invoke-static {v0}, Lcom/tebakgambar/service/TGDownloadService;->w(Landroid/content/Context;)V

    return-void
.end method

.method public t()V
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->p:Lm8/d;

    iget-object v1, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    invoke-virtual {v0, v1}, Lm8/d;->h(Lcom/tebakgambar/model/GameData;)V

    return-void
.end method

.method public v(J)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->s:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Ly8/y;->t0(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public w(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lm8/a;->r:Landroid/content/Context;

    sget-object v1, Lm8/a;->t:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Ly8/y;->s0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public x(II)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    iget-object v0, v0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    iget v1, v0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-ne v1, p1, :cond_d

    .line 2
    iput p2, v0, Lcom/tebakgambar/model/request/LevelStructure2;->hint:I

    .line 3
    invoke-virtual {p0}, Lm8/a;->t()V

    :cond_d
    return-void
.end method

.method public y(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    iget-object v0, v0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    iput p1, v0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    .line 2
    invoke-virtual {p0}, Lm8/a;->t()V

    return-void
.end method

.method public z(ILjava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lm8/a;->q:Lcom/tebakgambar/model/GameData;

    iget-object v0, v0, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    iget v1, v0, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-ne v1, p1, :cond_e

    .line 2
    invoke-virtual {v0, p2}, Lcom/tebakgambar/model/request/LevelStructure2;->setListLevel(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lm8/a;->t()V

    :cond_e
    return-void
.end method
