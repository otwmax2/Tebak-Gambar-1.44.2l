###### Class com.tebakgambar.service.TGDownloadService (com.tebakgambar.service.TGDownloadService)
.class public Lcom/tebakgambar/service/TGDownloadService;
.super Landroidx/core/app/h;
.source "TGDownloadService.java"

# interfaces
.implements Ly8/h$a;


# instance fields
.field private A:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:J

.field private C:I

.field private D:Landroidx/core/app/l$e;

.field private x:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Li8/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/h;-><init>()V

    return-void
.end method

.method private synthetic A()Lcom/tebakgambar/model/response/ApiResponse2;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->a()Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    move-result-object v0

    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;->getLevel(Ljava/lang/String;)Lwa/b;

    move-result-object v0

    invoke-interface {v0}, Lwa/b;->execute()Lwa/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lwa/l;->f()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3
    invoke-virtual {v0}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/response/ApiResponse2;

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->x:Lt1/h;

    .line 5
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download level list failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lwa/l;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic B(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 2
    iput-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->x:Lt1/h;

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->r()Ljava/lang/Exception;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :cond_14
    return-object v1
.end method

.method private synthetic C()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/service/TGDownloadService;->y()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic D()Ljava/lang/Void;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v0

    .line 2
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v1

    invoke-virtual {v1}, Ln8/a;->e()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-static {v1, v0}, Lcom/tebakgambar/model/LevelWithVersioning;->getAllOutdatedLevelIds(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->addAll(ILjava/util/Collection;)Z

    const/4 v0, 0x0

    return-object v0
.end method

.method private static E(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/service/TGDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.tebakgambar.service.action.ondemand_incremental"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static F(Landroid/content/Context;I)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/service/TGDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.tebakgambar.service.action.ondemand"

    .line 2
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.tebakgambar.service.extra.level"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private H(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lw8/b;

    invoke-direct {p1, p0}, Lw8/b;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    invoke-static {p1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

.method private I(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object p1

    invoke-virtual {p1}, Ln8/a;->f()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    .line 3
    invoke-static {p0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v1

    iget-object v0, v0, Lcom/tebakgambar/model/Level;->frameUrl:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v0}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {v0, v1, v1}, Lv1/d;->Z(II)Lt2/a;

    goto :goto_10

    :cond_2c
    const/4 p1, 0x0

    return-object p1
.end method

.method private J(Lt1/h;)Lt1/h;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/SliderDatabase;->C()Lcom/tebakgambar/database/SliderDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tebakgambar/database/SliderDatabase;->D()Ln8/c;

    move-result-object p1

    invoke-virtual {p1}, Ln8/c;->a()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Slider;

    .line 3
    iget-object v0, v0, Lcom/tebakgambar/model/Slider;->images:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/Slider$Image;

    .line 4
    invoke-static {p0}, Lv1/g;->v(Landroid/content/Context;)Lv1/j;

    move-result-object v2

    iget-object v1, v1, Lcom/tebakgambar/model/Slider$Image;->imageUrl:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v1}, Lv1/j;->x(Ljava/lang/String;)Lv1/d;

    move-result-object v1

    const/high16 v2, -0x80000000

    .line 6
    invoke-virtual {v1, v2, v2}, Lv1/d;->Z(II)Lt2/a;

    goto :goto_22

    :cond_3e
    const/4 p1, 0x0

    return-object p1
.end method

.method private K(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_14

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_14
    return-void
.end method

.method private L(Lt1/h;)Lt1/h;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li1/t;->d()Li1/t;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    invoke-virtual {v0}, Ln8/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Lcom/google/gson/f;

    invoke-direct {v2}, Lcom/google/gson/f;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "tg-upcoming-level"

    if-eqz v3, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/Level;

    .line 6
    invoke-virtual {v3}, Lcom/tebakgambar/model/Level;->isValidLocalNotification()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 7
    new-instance v5, Landroidx/work/b$a;

    invoke-direct {v5}, Landroidx/work/b$a;-><init>()V

    iget-object v6, v3, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    iget-object v6, v6, Lcom/tebakgambar/model/ComingSoon;->releaseLocalNotification:Lcom/tebakgambar/model/TimedDialogModel;

    .line 8
    invoke-virtual {v2, v6}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "json"

    invoke-virtual {v5, v7, v6}, Landroidx/work/b$a;->e(Ljava/lang/String;Ljava/lang/String;)Landroidx/work/b$a;

    move-result-object v5

    .line 9
    invoke-virtual {v5}, Landroidx/work/b$a;->a()Landroidx/work/b;

    move-result-object v5

    .line 10
    new-instance v6, Li1/l$a;

    const-class v7, Lcom/tebakgambar/service/LocalNotificationWorker;

    invoke-direct {v6, v7}, Li1/l$a;-><init>(Ljava/lang/Class;)V

    .line 11
    invoke-virtual {v6, v4}, Li1/u$a;->a(Ljava/lang/String;)Li1/u$a;

    move-result-object v4

    check-cast v4, Li1/l$a;

    iget-object v3, v3, Lcom/tebakgambar/model/Level;->comingSoon:Lcom/tebakgambar/model/ComingSoon;

    iget-object v3, v3, Lcom/tebakgambar/model/ComingSoon;->releaseLocalNotification:Lcom/tebakgambar/model/TimedDialogModel;

    iget-wide v6, v3, Lcom/tebakgambar/model/TimedDialogModel;->time:J

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v3}, Li1/u$a;->f(JLjava/util/concurrent/TimeUnit;)Li1/u$a;

    move-result-object v3

    check-cast v3, Li1/l$a;

    .line 13
    invoke-virtual {v3, v5}, Li1/u$a;->g(Landroidx/work/b;)Li1/u$a;

    move-result-object v3

    check-cast v3, Li1/l$a;

    .line 14
    invoke-virtual {v3}, Li1/u$a;->b()Li1/u;

    move-result-object v3

    check-cast v3, Li1/l;

    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 16
    :cond_79
    invoke-virtual {p1, v4}, Li1/t;->a(Ljava/lang/String;)Li1/m;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_85

    .line 18
    invoke-virtual {p1, v1}, Li1/t;->c(Ljava/util/List;)Li1/m;

    :cond_85
    const/4 p1, 0x0

    return-object p1
.end method

.method public static M(Landroid/content/Context;)V
    .registers 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tebakgambar/service/TGDownloadService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.tebakgambar.service.action.start"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->O(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private N(I)V
    .registers 8

    .line 1
    iput p1, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/tebakgambar/splash/SplashActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.action.MAIN"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10200000

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    new-instance v0, Landroidx/core/app/l$e;

    const-string v1, "tg-download-service"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/l$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f120025

    .line 7
    invoke-virtual {p0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/l$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    .line 8
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f120117

    invoke-virtual {p0, v3, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/l$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v3, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/core/app/l$e;->z(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Landroidx/core/app/l$e;->s(Z)Landroidx/core/app/l$e;

    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/core/app/l$e;->t(I)Landroidx/core/app/l$e;

    move-result-object v0

    const v2, 0x7f08011b

    .line 12
    invoke-virtual {v0, v2}, Landroidx/core/app/l$e;->w(I)Landroidx/core/app/l$e;

    move-result-object v0

    .line 13
    invoke-static {p0, v4, p1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/l$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/l$e;

    move-result-object p1

    const/16 v0, 0x64

    .line 14
    invoke-virtual {p1, v0, v4, v1}, Landroidx/core/app/l$e;->u(IIZ)Landroidx/core/app/l$e;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/service/TGDownloadService;->D:Landroidx/core/app/l$e;

    .line 15
    invoke-virtual {p1}, Landroidx/core/app/l$e;->b()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private static O(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->x(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_f

    :catch_4
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method private P(ZZ)V
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_a3

    const/4 p1, 0x0

    if-eqz p2, :cond_2a

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->d()Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    invoke-virtual {v1, v2}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder;->level(I)Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/tebakgambar/levelselection/LevelLoadingActivity$$IntentBuilder$a;->a()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f120115

    new-array v3, v0, [Ljava/lang/Object;

    .line 4
    iget v4, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4d

    .line 5
    :cond_2a
    invoke-static {p0}, Lcom/tebakgambar/Henson;->with(Landroid/content/Context;)Lcom/tebakgambar/Henson$b;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Lcom/tebakgambar/Henson$b;->e()Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    .line 7
    invoke-virtual {v1, v2}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->failedLevel(I)Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/tebakgambar/levelselection/LevelSelectionActivity$$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v1

    const v2, 0x7f120116

    new-array v3, v0, [Ljava/lang/Object;

    .line 9
    iget v4, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_4d
    const/high16 v3, 0x24000000

    .line 10
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    new-instance v3, Landroidx/core/app/l$e;

    const-string v4, "tg-download-service"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/l$e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x7f120025

    .line 12
    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/core/app/l$e;->k(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v2}, Landroidx/core/app/l$e;->j(Ljava/lang/CharSequence;)Landroidx/core/app/l$e;

    move-result-object v2

    .line 14
    invoke-virtual {v2, v0}, Landroidx/core/app/l$e;->f(Z)Landroidx/core/app/l$e;

    move-result-object v2

    const/4 v3, 0x2

    .line 15
    invoke-virtual {v2, v3}, Landroidx/core/app/l$e;->t(I)Landroidx/core/app/l$e;

    move-result-object v2

    const v4, 0x7f08011b

    .line 16
    invoke-virtual {v2, v4}, Landroidx/core/app/l$e;->w(I)Landroidx/core/app/l$e;

    move-result-object v2

    const/high16 v4, 0x10000000

    .line 17
    invoke-static {p0, p1, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/core/app/l$e;->i(Landroid/app/PendingIntent;)Landroidx/core/app/l$e;

    move-result-object v1

    if-nez p2, :cond_98

    .line 18
    iget p2, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    invoke-static {p0, p2}, Lcom/tebakgambar/service/TGDownloadService;->F(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    const v2, 0x7f1201da

    .line 19
    invoke-virtual {p0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v1, p1, v2, p2}, Landroidx/core/app/l$e;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/l$e;

    .line 20
    :cond_98
    invoke-static {p0}, Landroidx/core/app/o;->b(Landroid/content/Context;)Landroidx/core/app/o;

    move-result-object p1

    invoke-virtual {v1}, Landroidx/core/app/l$e;->b()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroidx/core/app/o;->d(ILandroid/app/Notification;)V

    :cond_a3
    const/4 p1, -0x1

    .line 21
    iput p1, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/tebakgambar/service/TGDownloadService;->D:Landroidx/core/app/l$e;

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method private Q()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->D:Landroidx/core/app/l$e;

    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    invoke-virtual {v1}, Li8/a;->b()F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroidx/core/app/l$e;->u(IIZ)Landroidx/core/app/l$e;

    .line 2
    invoke-static {p0}, Landroidx/core/app/o;->b(Landroid/content/Context;)Landroidx/core/app/o;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->D:Landroidx/core/app/l$e;

    invoke-virtual {v1}, Landroidx/core/app/l$e;->b()Landroid/app/Notification;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/core/app/o;->d(ILandroid/app/Notification;)V

    return-void
.end method

.method public static synthetic j(Lcom/tebakgambar/service/TGDownloadService;)Lcom/tebakgambar/model/response/ApiResponse2;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/service/TGDownloadService;->A()Lcom/tebakgambar/model/response/ApiResponse2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->J(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/tebakgambar/service/TGDownloadService;)Ljava/lang/Void;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/service/TGDownloadService;->D()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->t(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->z(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->H(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->L(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->B(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/tebakgambar/service/TGDownloadService;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/service/TGDownloadService;->C()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->I(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method private t(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Lcom/tebakgambar/model/response/ApiResponse2;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/response/ApiResponse2;

    iget-object v1, v1, Lcom/tebakgambar/model/response/ApiResponse2;->data:Ljava/util/List;

    invoke-virtual {v0, v1}, Ln8/a;->g(Ljava/util/List;)V

    .line 2
    invoke-static {}, Lcom/tebakgambar/database/SliderDatabase;->C()Lcom/tebakgambar/database/SliderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/database/SliderDatabase;->D()Ln8/c;

    move-result-object v0

    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/response/ApiResponse2;

    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse2;->dataSlider:Ljava/util/List;

    invoke-virtual {v0, p1}, Ln8/c;->d(Ljava/util/List;)V

    .line 3
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "levelUpdated"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lu0/a;->d(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method private u(Z)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->x:Lt1/h;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    goto :goto_8

    :cond_7
    return-object v0

    .line 2
    :cond_8
    :goto_8
    new-instance p1, Lw8/a;

    invoke-direct {p1, p0}, Lw8/a;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    invoke-static {p1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/e;

    invoke-direct {v0, p0}, Lw8/e;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 3
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/d;

    invoke-direct {v0, p0}, Lw8/d;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 4
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/j;

    invoke-direct {v0, p0}, Lw8/j;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 5
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/h;

    invoke-direct {v0, p0}, Lw8/h;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 6
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/g;

    invoke-direct {v0, p0}, Lw8/g;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 7
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/f;

    invoke-direct {v0, p0}, Lw8/f;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 8
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/i;

    invoke-direct {v0, p0}, Lw8/i;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 9
    invoke-virtual {p1, v0}, Lt1/h;->l(Lt1/f;)Lt1/h;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/service/TGDownloadService;->x:Lt1/h;

    return-object p1
.end method

.method public static v(Landroid/content/Context;Lcom/tebakgambar/model/Level;)V
    .registers 2

    .line 1
    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->F(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->O(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static w(Landroid/content/Context;)V
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/tebakgambar/service/TGDownloadService;->E(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->O(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static x(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    const-class v0, Lcom/tebakgambar/service/TGDownloadService;

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/h;->d(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method private y()V
    .registers 11

    .line 1
    iget-boolean v0, p0, Lcom/tebakgambar/service/TGDownloadService;->y:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/tebakgambar/service/TGDownloadService;->y:Z

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_a
    iget-object v3, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_b5

    .line 4
    iget-object v3, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5
    invoke-static {}, Lcom/tebakgambar/database/TGDatabase;->C()Lcom/tebakgambar/database/TGDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tebakgambar/database/TGDatabase;->E()Ln8/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Ln8/a;->d(I)Lcom/tebakgambar/model/LevelWithVersioning;

    move-result-object v4

    .line 6
    new-instance v5, Li8/a;

    iget-object v6, v4, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    invoke-direct {v5, v6}, Li8/a;-><init>(Lcom/tebakgambar/model/Level;)V

    iput-object v5, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    const-string v5, "TG-DEBUG"

    .line 7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "level "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_4a
    const/4 v6, 0x3

    if-ge v5, v6, :cond_b0

    .line 8
    invoke-virtual {v4}, Lcom/tebakgambar/model/LevelWithVersioning;->isNeedToUpdate()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 9
    invoke-direct {p0, v3}, Lcom/tebakgambar/service/TGDownloadService;->K(I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->G(Z)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_59} :catch_c2
    .catchall {:try_start_a .. :try_end_59} :catchall_c0

    goto :goto_b0

    .line 11
    :cond_5a
    :try_start_5a
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->a()Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;

    move-result-object v7

    iget-object v8, v4, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    iget-object v8, v8, Lcom/tebakgambar/model/Level;->zipLevelUrl:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/tebakgambar/network/TebakGambarApi$DownloadInterface;->downloadFile(Ljava/lang/String;)Lwa/b;

    move-result-object v7

    invoke-interface {v7}, Lwa/b;->execute()Lwa/l;

    move-result-object v7
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_6a} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6a} :catch_c2
    .catchall {:try_start_5a .. :try_end_6a} :catchall_c0

    .line 12
    :try_start_6a
    invoke-virtual {v7}, Lwa/l;->f()Z

    move-result v8

    if-nez v8, :cond_71

    goto :goto_ad

    .line 13
    :cond_71
    iget-object v8, v4, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    invoke-virtual {v8}, Lcom/tebakgambar/model/Level;->getTemporaryDownloadFileName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Ly8/h;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 14
    iget-object v9, v4, Lcom/tebakgambar/model/LevelWithVersioning;->level:Lcom/tebakgambar/model/Level;

    invoke-virtual {v9}, Lcom/tebakgambar/model/Level;->getLevelFolderName()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Ly8/h;->m(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 15
    invoke-virtual {v7}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lja/d0;

    invoke-static {v7, v8, p0}, Ly8/h;->f(Lja/d0;Ljava/io/File;Ly8/h$a;)Z

    move-result v7

    if-nez v7, :cond_92

    goto :goto_ad

    .line 16
    :cond_92
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 17
    invoke-static {v8, v9}, Ly8/h;->s(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_9c

    goto :goto_ad

    .line 18
    :cond_9c
    invoke-virtual {v4}, Lcom/tebakgambar/model/LevelWithVersioning;->syncronizeVersion()V

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 20
    invoke-direct {p0, v3}, Lcom/tebakgambar/service/TGDownloadService;->K(I)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->G(Z)V

    goto :goto_b0

    :catch_a9
    move-exception v6

    .line 22
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    :goto_ad
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_b0
    :goto_b0
    if-lt v5, v6, :cond_8

    .line 23
    invoke-virtual {p0, v2}, Lcom/tebakgambar/service/TGDownloadService;->G(Z)V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_b5} :catch_c2
    .catchall {:try_start_6a .. :try_end_b5} :catchall_c0

    .line 24
    :cond_b5
    :goto_b5
    iput-boolean v2, p0, Lcom/tebakgambar/service/TGDownloadService;->y:Z

    .line 25
    iput-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_ce

    :catchall_c0
    move-exception v3

    goto :goto_cf

    :catch_c2
    move-exception v3

    .line 28
    :try_start_c3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V
    :try_end_cd
    .catchall {:try_start_c3 .. :try_end_cd} :catchall_c0

    goto :goto_b5

    :goto_ce
    return-void

    .line 30
    :goto_cf
    iput-boolean v2, p0, Lcom/tebakgambar/service/TGDownloadService;->y:Z

    .line 31
    iput-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 34
    goto :goto_db

    :goto_da
    throw v3

    :goto_db
    goto :goto_da
.end method

.method private z(Lt1/h;)Lt1/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;)",
            "Lt1/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lw8/c;

    invoke-direct {p1, p0}, Lw8/c;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    invoke-static {p1}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public G(Z)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    if-eqz v0, :cond_26

    .line 2
    invoke-virtual {v0, p1}, Li8/a;->g(Z)V

    .line 3
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    invoke-virtual {v1}, Li8/a;->h()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu0/a;->d(Landroid/content/Intent;)Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    invoke-virtual {v1}, Li8/a;->a()Lcom/tebakgambar/model/Level;

    move-result-object v1

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    iget v2, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    if-ne v1, v2, :cond_26

    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->P(ZZ)V

    :cond_26
    return-void
.end method

.method protected g(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 1
    invoke-direct {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->u(Z)Lt1/h;

    return-void

    .line 2
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tebakgambar.service.action.start"

    .line 3
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 4
    invoke-direct {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->u(Z)Lt1/h;

    goto :goto_62

    :cond_17
    const-string v2, "com.tebakgambar.service.action.ondemand"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v1, "com.tebakgambar.service.extra.level"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 7
    iget-object v1, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->N(I)V

    const/4 p1, 0x0

    .line 9
    invoke-direct {p0, p1}, Lcom/tebakgambar/service/TGDownloadService;->z(Lt1/h;)Lt1/h;

    goto :goto_62

    :cond_36
    const-string p1, "com.tebakgambar.service.action.ondemand_incremental"

    .line 10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 11
    invoke-direct {p0, v0}, Lcom/tebakgambar/service/TGDownloadService;->u(Z)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/g;

    invoke-direct {v0, p0}, Lw8/g;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 12
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    move-result-object p1

    new-instance v0, Lw8/f;

    invoke-direct {v0, p0}, Lw8/f;-><init>(Lcom/tebakgambar/service/TGDownloadService;)V

    .line 13
    invoke-virtual {p1, v0}, Lt1/h;->z(Lt1/f;)Lt1/h;

    goto :goto_62

    :cond_54
    const-string p1, "com.tebakgambar.service.action.stop"

    .line 14
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 15
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 16
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_62
    :goto_62
    return-void
.end method

.method public onCreate()V
    .registers 6

    .line 1
    invoke-super {p0}, Landroidx/core/app/h;->onCreate()V

    .line 2
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->A:Ljava/util/Vector;

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2a

    const-string v0, "notification"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 5
    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x3

    const-string v3, "tg-download-service"

    const-string v4, "Tebak Gambar Download"

    invoke-direct {v1, v3, v4, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    if-eqz v0, :cond_2a

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2a
    return-void
.end method

.method public onProgress(JJ)V
    .registers 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tebakgambar/service/TGDownloadService;->B:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-lez v4, :cond_54

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " Max:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pPercentage"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    if-eqz v0, :cond_41

    .line 4
    invoke-virtual {v0, p1, p2, p3, p4}, Li8/a;->i(JJ)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    invoke-virtual {p1}, Li8/a;->a()Lcom/tebakgambar/model/Level;

    move-result-object p1

    iget p1, p1, Lcom/tebakgambar/model/Level;->id:I

    iget p2, p0, Lcom/tebakgambar/service/TGDownloadService;->C:I

    if-ne p1, p2, :cond_41

    .line 6
    invoke-direct {p0}, Lcom/tebakgambar/service/TGDownloadService;->Q()V

    .line 7
    :cond_41
    invoke-static {p0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object p1

    iget-object p2, p0, Lcom/tebakgambar/service/TGDownloadService;->z:Li8/a;

    invoke-virtual {p2}, Li8/a;->h()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lu0/a;->d(Landroid/content/Intent;)Z

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tebakgambar/service/TGDownloadService;->B:J

    :cond_54
    return-void
.end method

###### Class w8.a (w8.a)
.class public final synthetic Lw8/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/a;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lw8/a;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0}, Lcom/tebakgambar/service/TGDownloadService;->j(Lcom/tebakgambar/service/TGDownloadService;)Lcom/tebakgambar/model/response/ApiResponse2;

    move-result-object v0

    return-object v0
.end method

###### Class w8.b (w8.b)
.class public final synthetic Lw8/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/b;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lw8/b;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0}, Lcom/tebakgambar/service/TGDownloadService;->l(Lcom/tebakgambar/service/TGDownloadService;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

###### Class w8.c (w8.c)
.class public final synthetic Lw8/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/c;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lw8/c;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0}, Lcom/tebakgambar/service/TGDownloadService;->r(Lcom/tebakgambar/service/TGDownloadService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class w8.d (w8.d)
.class public final synthetic Lw8/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/d;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/d;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->k(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class w8.e (w8.e)
.class public final synthetic Lw8/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/e;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/e;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->m(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class w8.h (w8.h)
.class public final synthetic Lw8/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/h;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/h;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->p(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class w8.i (w8.i)
.class public final synthetic Lw8/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/i;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/i;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->q(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class w8.j (w8.j)
.class public final synthetic Lw8/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/service/TGDownloadService;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/service/TGDownloadService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/j;->a:Lcom/tebakgambar/service/TGDownloadService;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw8/j;->a:Lcom/tebakgambar/service/TGDownloadService;

    invoke-static {v0, p1}, Lcom/tebakgambar/service/TGDownloadService;->s(Lcom/tebakgambar/service/TGDownloadService;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
