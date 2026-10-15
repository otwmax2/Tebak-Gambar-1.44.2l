###### Class com.tebakgambar.levelselection.z (com.tebakgambar.levelselection.z)
.class public Lcom/tebakgambar/levelselection/z;
.super Lj8/x;
.source "LevelSelectionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tebakgambar/levelselection/z$c;
    }
.end annotation


# instance fields
.field C:Lcom/tebakgambar/levelselection/r$j;

.field D:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Lcom/tebakgambar/model/CustomBanner;",
            ">;"
        }
    .end annotation
.end field

.field E:Ly8/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ly8/u<",
            "Lcom/tebakgambar/model/BaseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/tebakgambar/model/Event2;

.field public G:I

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/nativead/NativeAd;",
            ">;"
        }
    .end annotation
.end field

.field private I:Landroid/content/BroadcastReceiver;

.field private J:Lm8/a;

.field private K:Lcom/google/android/gms/ads/AdLoader;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Lj8/x;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Lcom/tebakgambar/levelselection/r$j;

    invoke-direct {p1}, Lcom/tebakgambar/levelselection/r$j;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    .line 3
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->D:Landroidx/lifecycle/t;

    .line 4
    new-instance p1, Ly8/u;

    invoke-direct {p1}, Ly8/u;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->E:Ly8/u;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    .line 7
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->b0()V

    .line 8
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->c0()V

    .line 9
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/levelselection/z;->J:Lm8/a;

    .line 10
    new-instance v0, Lcom/tebakgambar/levelselection/z$c;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/z$c;-><init>(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/levelselection/z$a;)V

    iput-object v0, p0, Lcom/tebakgambar/levelselection/z;->I:Landroid/content/BroadcastReceiver;

    .line 11
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->I:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "levelUpdated"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lu0/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static synthetic E(Lcom/tebakgambar/levelselection/z;)Ljava/lang/Object;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->a0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/tebakgambar/levelselection/z;->W(Ljava/util/ArrayList;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

.method public static synthetic G(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z;->Z(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic H(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z;->Y(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/tebakgambar/levelselection/z;)V
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->X()V

    return-void
.end method

.method static synthetic J(Lcom/tebakgambar/levelselection/z;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->c0()V

    return-void
.end method

.method static synthetic K(Lcom/tebakgambar/levelselection/z;)Lcom/google/android/gms/ads/AdLoader;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    return-object p0
.end method

.method static synthetic L(Lcom/tebakgambar/levelselection/z;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    return-object p1
.end method

.method static synthetic M(Lcom/tebakgambar/levelselection/z;)Landroidx/lifecycle/t;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    return-object p0
.end method

.method static synthetic N(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/model/Event2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z;->Q(Lcom/tebakgambar/model/Event2;)V

    return-void
.end method

.method static synthetic O(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/model/Event2;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z;->e0(Lcom/tebakgambar/model/Event2;)V

    return-void
.end method

.method static synthetic P(Lcom/tebakgambar/levelselection/z;)Landroidx/lifecycle/t;
    .registers 1

    .line 1
    iget-object p0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    return-object p0
.end method

.method private Q(Lcom/tebakgambar/model/Event2;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Ly8/y;->p0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private synthetic W(Ljava/util/ArrayList;Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 3

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    if-eqz p2, :cond_12

    invoke-virtual {p2}, Lcom/google/android/gms/ads/AdLoader;->a()Z

    move-result p2

    if-nez p2, :cond_12

    .line 3
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/z;->c0()V

    :cond_12
    return-void
.end method

.method private synthetic X()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/tebakgambar/levelselection/z;->G:I

    .line 2
    iget-object v0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic Y(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/tebakgambar/levelselection/z;->G:I

    if-eqz v0, :cond_b

    .line 2
    iget-object v0, p0, Lj8/x;->v:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    :cond_b
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getEvent(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/levelselection/z$b;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/z$b;-><init>(Lcom/tebakgambar/levelselection/z;)V

    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    .line 4
    iget p1, p0, Lcom/tebakgambar/levelselection/z;->G:I

    if-eqz p1, :cond_40

    .line 5
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/tebakgambar/levelselection/w;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/w;-><init>(Lcom/tebakgambar/levelselection/z;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_40
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic Z(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 2
    new-instance v0, Lcom/tebakgambar/levelselection/y;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/y;-><init>(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    :cond_20
    return-void
.end method

.method private synthetic a0()Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/tebakgambar/levelselection/z;->F:Lcom/tebakgambar/model/Event2;

    if-eqz v1, :cond_19

    .line 3
    iget-object v1, v1, Lcom/tebakgambar/model/Event2;->event:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_10
    iget-object v1, p0, Lcom/tebakgambar/levelselection/z;->F:Lcom/tebakgambar/model/Event2;

    iget-object v1, v1, Lcom/tebakgambar/model/Event2;->event_clue:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_19
    invoke-static {}, Lcom/tebakgambar/model/Level;->getAllLevels()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/Level;

    .line 9
    invoke-virtual {v3}, Lcom/tebakgambar/model/Level;->isUpcomingLevel()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x0

    goto :goto_37

    :cond_36
    const/4 v2, 0x1

    .line 10
    :goto_37
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    const/4 v3, 0x1

    :goto_41
    if-gt v3, v1, :cond_6c

    .line 12
    iget-object v5, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    if-eqz v5, :cond_5d

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5d

    .line 13
    iget-object v5, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 14
    iget-object v6, p0, Lcom/tebakgambar/levelselection/z;->H:Ljava/util/List;

    add-int/lit8 v7, v3, -0x1

    rem-int/2addr v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_62

    .line 15
    :cond_5d
    new-instance v5, Lcom/tebakgambar/levelselection/r$j$b;

    invoke-direct {v5}, Lcom/tebakgambar/levelselection/r$j$b;-><init>()V

    :goto_62
    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v6, v3

    sub-int/2addr v6, v4

    .line 16
    invoke-interface {v0, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_6c
    if-eqz v2, :cond_76

    .line 17
    new-instance v1, Lcom/tebakgambar/levelselection/r$j$a;

    invoke-direct {v1}, Lcom/tebakgambar/levelselection/r$j$a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_76
    iget-object v1, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    iget-object v1, v1, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v1, v0}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->a:Landroidx/databinding/n;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private b0()V
    .registers 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/gson/f;

    invoke-direct {v1}, Lcom/google/gson/f;-><init>()V

    .line 3
    const-class v2, Lcom/tebakgambar/model/Event2;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Event2;

    if-eqz v0, :cond_26

    .line 4
    invoke-direct {p0, v0}, Lcom/tebakgambar/levelselection/z;->e0(Lcom/tebakgambar/model/Event2;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_26

    :catch_1b
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/a;->d(Ljava/lang/Throwable;)V

    :cond_26
    :goto_26
    return-void
.end method

.method private c0()V
    .registers 2

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/x;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/x;-><init>(Lcom/tebakgambar/levelselection/z;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    return-void
.end method

.method private d0(Lcom/tebakgambar/model/Event2;)V
    .registers 5

    .line 1
    iget v0, p0, Lcom/tebakgambar/levelselection/z;->G:I

    if-eqz v0, :cond_47

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p1, Lcom/tebakgambar/model/Event2;->event:Ljava/util/ArrayList;

    if-eqz v1, :cond_10

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    :cond_10
    iget-object p1, p1, Lcom/tebakgambar/model/Event2;->event_clue:Ljava/util/ArrayList;

    if-eqz p1, :cond_17

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/BaseEvent;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tebakgambar/levelselection/z;->G:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/tebakgambar/model/BaseEvent;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 9
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z;->E:Ly8/u;

    invoke-virtual {p1, v0}, Ly8/u;->n(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method private e0(Lcom/tebakgambar/model/Event2;)V
    .registers 5

    .line 1
    iget-object v0, p1, Lcom/tebakgambar/model/Event2;->custom_banner:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->D:Landroidx/lifecycle/t;

    iget-object v1, p1, Lcom/tebakgambar/model/Event2;->custom_banner:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/CustomBanner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    :cond_18
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z;->F:Lcom/tebakgambar/model/Event2;

    .line 4
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z;->d0(Lcom/tebakgambar/model/Event2;)V

    return-void
.end method


# virtual methods
.method R()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->b:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->C:Lcom/tebakgambar/levelselection/r$j;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/r$j;->a:Landroidx/databinding/n;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Ly8/y;->s(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/databinding/n;->z(I)V

    :cond_29
    return-void
.end method

.method S()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 2
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    if-nez v1, :cond_44

    .line 4
    new-instance v1, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v2

    const-string v3, "ca-app-pub-7269282889157841/4082918816"

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/tebakgambar/levelselection/u;

    invoke-direct {v2, p0, v0}, Lcom/tebakgambar/levelselection/u;-><init>(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->c(Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v1

    new-instance v2, Lcom/tebakgambar/levelselection/z$a;

    invoke-direct {v2, p0, v0}, Lcom/tebakgambar/levelselection/z$a;-><init>(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdLoader$Builder;->e(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;-><init>()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAdOptions$Builder;->a()Lcom/google/android/gms/ads/nativead/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->g(Lcom/google/android/gms/ads/nativead/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->a()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    .line 9
    :cond_44
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    invoke-static {}, Lj8/b;->k()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/AdLoader;->c(Lcom/google/android/gms/ads/AdRequest;I)V

    return-void
.end method

.method T()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/levelselection/v;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/v;-><init>(Lcom/tebakgambar/levelselection/z;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method U(Lcom/tebakgambar/model/Level;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tebakgambar/model/Level;->generateLevelIfNeeded(Landroid/content/Context;)V

    return-void
.end method

.method V(Lcom/tebakgambar/model/BaseEvent;)Z
    .registers 4

    .line 1
    iget-object p1, p1, Lcom/tebakgambar/model/BaseEvent;->need_login:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1d

    .line 3
    invoke-virtual {p1}, Lg5/s;->c4()Z

    move-result p1

    if-nez p1, :cond_1d

    const/4 v0, 0x1

    :cond_1d
    xor-int/lit8 p1, v0, 0x1

    return p1

    :cond_20
    return v0
.end method

.method f0()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->J:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    if-nez v0, :cond_e

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->J:Lm8/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lm8/a;->A(I)V

    :cond_e
    return-void
.end method

.method protected h()V
    .registers 3

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/g0;->h()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/tebakgambar/levelselection/z;->K:Lcom/google/android/gms/ads/AdLoader;

    .line 3
    iget-object v0, p0, Lcom/tebakgambar/levelselection/z;->I:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lu0/a;->b(Landroid/content/Context;)Lu0/a;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/levelselection/z;->I:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lu0/a;->e(Landroid/content/BroadcastReceiver;)V

    :cond_17
    return-void
.end method

###### Class com.tebakgambar.levelselection.z.a (com.tebakgambar.levelselection.z$a)
.class Lcom/tebakgambar/levelselection/z$a;
.super Lcom/google/android/gms/ads/AdListener;
.source "LevelSelectionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/z;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/tebakgambar/levelselection/z;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z$a;->b:Lcom/tebakgambar/levelselection/z;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/z$a;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->e()V

    return-void
.end method

.method public m(Lcom/google/android/gms/ads/LoadAdError;)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/ads/AdListener;->m(Lcom/google/android/gms/ads/LoadAdError;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$a;->b:Lcom/tebakgambar/levelselection/z;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->K(Lcom/tebakgambar/levelselection/z;)Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$a;->b:Lcom/tebakgambar/levelselection/z;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->K(Lcom/tebakgambar/levelselection/z;)Lcom/google/android/gms/ads/AdLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdLoader;->a()Z

    move-result p1

    if-nez p1, :cond_23

    .line 3
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$a;->b:Lcom/tebakgambar/levelselection/z;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/z$a;->a:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/tebakgambar/levelselection/z;->L(Lcom/tebakgambar/levelselection/z;Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$a;->b:Lcom/tebakgambar/levelselection/z;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->J(Lcom/tebakgambar/levelselection/z;)V

    :cond_23
    return-void
.end method

.method public n()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->n()V

    return-void
.end method

.method public o()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->o()V

    return-void
.end method

.method public p()V
    .registers 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->p()V

    return-void
.end method

.method public w0()V
    .registers 5

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/ads/AdListener;->w0()V

    const-string v0, "clickAds"

    const-string v1, "level page"

    const-string v2, "click on ads"

    const-string v3, ""

    .line 2
    invoke-static {v0, v1, v2, v3}, Lm8/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.z.b (com.tebakgambar.levelselection.z$b)
.class Lcom/tebakgambar/levelselection/z$b;
.super Ljava/lang/Object;
.source "LevelSelectionViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/z;->Y(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lwa/d<",
        "Lcom/tebakgambar/model/response/ApiResponse3<",
        "Lcom/tebakgambar/model/Event2;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/z;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/Event2;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/Event2;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    iget v0, p1, Lcom/tebakgambar/levelselection/z;->G:I

    if-eqz v0, :cond_f

    .line 2
    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->M(Lcom/tebakgambar/levelselection/z;)Landroidx/lifecycle/t;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    :cond_f
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 4
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object v0, v0, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast v0, Lcom/tebakgambar/model/Event2;

    invoke-static {p1, v0}, Lcom/tebakgambar/levelselection/z;->N(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/model/Event2;)V

    .line 5
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/Event2;

    invoke-static {p1, p2}, Lcom/tebakgambar/levelselection/z;->O(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/model/Event2;)V

    .line 6
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->J(Lcom/tebakgambar/levelselection/z;)V

    .line 7
    :cond_38
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    const/4 p2, 0x0

    iput p2, p1, Lcom/tebakgambar/levelselection/z;->G:I

    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/Event2;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    iget p2, p1, Lcom/tebakgambar/levelselection/z;->G:I

    if-eqz p2, :cond_f

    .line 2
    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->P(Lcom/tebakgambar/levelselection/z;)Landroidx/lifecycle/t;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 3
    :cond_f
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$b;->a:Lcom/tebakgambar/levelselection/z;

    const/4 p2, 0x0

    iput p2, p1, Lcom/tebakgambar/levelselection/z;->G:I

    return-void
.end method

###### Class com.tebakgambar.levelselection.z.c (com.tebakgambar.levelselection.z$c)
.class Lcom/tebakgambar/levelselection/z$c;
.super Landroid/content/BroadcastReceiver;
.source "LevelSelectionViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/levelselection/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/z;


# direct methods
.method private constructor <init>(Lcom/tebakgambar/levelselection/z;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/z$c;->a:Lcom/tebakgambar/levelselection/z;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;Lcom/tebakgambar/levelselection/z$a;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/z$c;-><init>(Lcom/tebakgambar/levelselection/z;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/z$c;->a:Lcom/tebakgambar/levelselection/z;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/z;->J(Lcom/tebakgambar/levelselection/z;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.u (com.tebakgambar.levelselection.u)
.class public final synthetic Lcom/tebakgambar/levelselection/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/z;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/u;->a:Lcom/tebakgambar/levelselection/z;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/u;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .registers 4

    iget-object v0, p0, Lcom/tebakgambar/levelselection/u;->a:Lcom/tebakgambar/levelselection/z;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/u;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lcom/tebakgambar/levelselection/z;->F(Lcom/tebakgambar/levelselection/z;Ljava/util/ArrayList;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.v (com.tebakgambar.levelselection.v)
.class public final synthetic Lcom/tebakgambar/levelselection/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/z;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/v;->a:Lcom/tebakgambar/levelselection/z;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/v;->a:Lcom/tebakgambar/levelselection/z;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/z;->G(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.w (com.tebakgambar.levelselection.w)
.class public final synthetic Lcom/tebakgambar/levelselection/w;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/tebakgambar/levelselection/z;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/w;->o:Lcom/tebakgambar/levelselection/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/w;->o:Lcom/tebakgambar/levelselection/z;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/z;->I(Lcom/tebakgambar/levelselection/z;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.x (com.tebakgambar.levelselection.x)
.class public final synthetic Lcom/tebakgambar/levelselection/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/z;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/x;->a:Lcom/tebakgambar/levelselection/z;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/x;->a:Lcom/tebakgambar/levelselection/z;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/z;->E(Lcom/tebakgambar/levelselection/z;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.y (com.tebakgambar.levelselection.y)
.class public final synthetic Lcom/tebakgambar/levelselection/y;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/z;

.field public final synthetic b:Lcom/google/android/gms/tasks/Task;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/y;->a:Lcom/tebakgambar/levelselection/z;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/y;->b:Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/y;->a:Lcom/tebakgambar/levelselection/z;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/y;->b:Lcom/google/android/gms/tasks/Task;

    invoke-static {v0, v1}, Lcom/tebakgambar/levelselection/z;->H(Lcom/tebakgambar/levelselection/z;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
