###### Class com.tebakgambar.levelselection.j0 (com.tebakgambar.levelselection.j0)
.class public Lcom/tebakgambar/levelselection/j0;
.super Landroidx/lifecycle/a;
.source "QuestionSelectionViewModel.java"


# instance fields
.field public s:Landroidx/databinding/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/m<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field t:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field u:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field v:Landroidx/lifecycle/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/t<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field w:Lcom/tebakgambar/levelselection/c0$d;

.field private x:Lm8/a;

.field private y:Lt1/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lt1/h<",
            "Lcom/tebakgambar/model/Level;",
            ">;"
        }
    .end annotation
.end field

.field private z:I


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    .line 2
    new-instance p1, Landroidx/databinding/m;

    invoke-direct {p1}, Landroidx/databinding/m;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    .line 3
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->t:Landroidx/lifecycle/t;

    .line 4
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    .line 5
    new-instance p1, Landroidx/lifecycle/t;

    invoke-direct {p1}, Landroidx/lifecycle/t;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->v:Landroidx/lifecycle/t;

    .line 6
    new-instance p1, Lcom/tebakgambar/levelselection/c0$d;

    invoke-direct {p1}, Lcom/tebakgambar/levelselection/c0$d;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->w:Lcom/tebakgambar/levelselection/c0$d;

    .line 7
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->x:Lm8/a;

    return-void
.end method

.method private synthetic A()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {v0}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic B(Lt1/h;)Lt1/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_29

    .line 2
    invoke-static {}, Lcom/google/firebase/crashlytics/a;->a()Lcom/google/firebase/crashlytics/a;

    move-result-object p1

    const-string v0, "Corrupted Data Detected"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/a;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object p1

    invoke-virtual {p1}, Lm8/a;->o()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 4
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->I()V

    goto :goto_32

    .line 5
    :cond_25
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->J()V

    goto :goto_32

    .line 6
    :cond_29
    invoke-virtual {p1}, Lt1/h;->s()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->t(Ljava/util/List;)V

    :goto_32
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic C(I)Lcom/tebakgambar/model/Level;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-static {p1}, Lcom/tebakgambar/model/Level;->fromId(I)Lcom/tebakgambar/model/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1}, Ly8/y;->A(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 4
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    const-string v1, "5"

    invoke-static {v0, p1, v1}, Ly8/y;->k0(Landroid/content/Context;ILjava/lang/String;)V

    :cond_20
    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic D(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/network/TebakGambarApi;->b()Lcom/tebakgambar/network/TebakGambarApi$Interface;

    move-result-object v0

    invoke-static {p1}, Lcom/tebakgambar/model/RequestHeader;->create(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/tebakgambar/network/TebakGambarApi$Interface;->getGameData(Ljava/util/Map;)Lwa/b;

    move-result-object p1

    new-instance v0, Lcom/tebakgambar/levelselection/j0$a;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/j0$a;-><init>(Lcom/tebakgambar/levelselection/j0;)V

    invoke-interface {p1, v0}, Lwa/b;->v3(Lwa/d;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private synthetic E(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->t()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/u;

    invoke-virtual {v0}, Lg5/u;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->p()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg5/u;

    invoke-virtual {p1}, Lg5/u;->c()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/tebakgambar/levelselection/g0;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/g0;-><init>(Lcom/tebakgambar/levelselection/j0;Ljava/lang/String;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    goto :goto_35

    .line 4
    :cond_2b
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->F()V

    :goto_35
    return-void
.end method

.method private F()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->e()V

    .line 2
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->v:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    return-void
.end method

.method private I()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg5/s;->W3(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/levelselection/d0;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/d0;-><init>(Lcom/tebakgambar/levelselection/j0;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private J()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    .line 2
    invoke-static {}, Lm8/a;->f()Lm8/a;

    move-result-object v1

    invoke-virtual {v1}, Lm8/a;->d()Lcom/tebakgambar/model/GameData;

    move-result-object v1

    iget-object v1, v1, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    .line 3
    invoke-virtual {v1}, Lcom/tebakgambar/model/request/LevelStructure2;->getListLevel()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/tebakgambar/model/request/LevelStructure2;->isValidLevelData(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, v1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-ne v0, v3, :cond_23

    goto :goto_34

    .line 5
    :cond_23
    iget v1, v1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-ge v0, v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    add-int/lit8 v2, v0, -0x1

    mul-int/lit8 v2, v2, 0x14

    add-int/lit8 v3, v2, 0x13

    .line 6
    invoke-static {v2, v3, v1}, Ly8/y;->p(IIZ)Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_34
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1, v0, v2}, Ly8/y;->q0(Landroid/content/Context;ILjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    invoke-virtual {v0}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tebakgambar/levelselection/j0;->t(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic k(Lcom/tebakgambar/levelselection/j0;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->z(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/tebakgambar/levelselection/j0;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->A()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/tebakgambar/levelselection/j0;Lt1/h;)Lt1/h;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->B(Lt1/h;)Lt1/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/tebakgambar/levelselection/j0;Lcom/google/android/gms/tasks/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->E(Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic o(Lcom/tebakgambar/levelselection/j0;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->D(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/tebakgambar/levelselection/j0;I)Lcom/tebakgambar/model/Level;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->C(I)Lcom/tebakgambar/model/Level;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/tebakgambar/levelselection/j0;Ljava/util/List;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/tebakgambar/levelselection/j0;->t(Ljava/util/List;)V

    return-void
.end method

.method static synthetic s(Lcom/tebakgambar/levelselection/j0;)V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->F()V

    return-void
.end method

.method private t(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tebakgambar/model/QuestionSavedData;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/QuestionSavedData;

    iget-boolean v1, v1, Lcom/tebakgambar/model/QuestionSavedData;->isReceh:Z

    if-eqz v1, :cond_60

    const/4 v1, 0x0

    .line 2
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/model/QuestionSavedData;

    invoke-virtual {v2}, Lcom/tebakgambar/model/QuestionSavedData;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "biasa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tebakgambar/model/QuestionSavedData;

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tebakgambar/model/QuestionSavedData;

    .line 6
    iget-boolean v4, v2, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    .line 7
    iget-boolean v5, v3, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    iput-boolean v5, v2, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    .line 8
    iput-boolean v4, v3, Lcom/tebakgambar/model/QuestionSavedData;->open:Z

    .line 9
    invoke-static {p1, v0, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_3f

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 10
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v1}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {p1}, Lcom/tebakgambar/model/QuestionSavedData;->toSavedData(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Ly8/y;->q0(Landroid/content/Context;ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {p1}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/Level;

    invoke-virtual {p1}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object p1

    .line 12
    :cond_60
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->w:Lcom/tebakgambar/levelselection/c0$d;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/c0$d;->a:Landroidx/databinding/m;

    invoke-virtual {v0, p1}, Landroidx/databinding/m;->z(Ljava/lang/Object;)V

    return-void
.end method

.method private v()V
    .registers 4

    .line 1
    new-instance v0, Lcom/tebakgambar/levelselection/e0;

    invoke-direct {v0, p0}, Lcom/tebakgambar/levelselection/e0;-><init>(Lcom/tebakgambar/levelselection/j0;)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object v0

    new-instance v1, Lcom/tebakgambar/levelselection/i0;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/i0;-><init>(Lcom/tebakgambar/levelselection/j0;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

.method private static w(Ljava/util/Date;Landroid/content/SharedPreferences;)Z
    .registers 6

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "LAST_DATE_REQUEST_IN_APP_REVIEW"

    invoke-interface {p1, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, p0, p1}, Ly8/y;->t(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private x(Landroid/content/SharedPreferences;Ljava/util/Date;)Z
    .registers 8

    const-string v0, "FIRST_DATE_REQUEST_IN_APP_REVIEW"

    const-wide/16 v1, 0x0

    .line 1
    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const/4 p1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_e

    return p1

    .line 2
    :cond_e
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->i()Lcom/google/firebase/remoteconfig/a;

    move-result-object v0

    const-string v1, "v1_inAppRating_nextEligibleSubmitInDays"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/a;->k(Ljava/lang/String;)J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, p2, v3}, Ly8/y;->t(Ljava/util/Date;Ljava/util/Date;Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-lez p2, :cond_28

    const/4 p1, 0x1

    :cond_28
    return p1
.end method

.method private synthetic z(Lt1/h;)Lt1/h;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0;->t:Landroidx/lifecycle/t;

    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->x:Lm8/a;

    invoke-virtual {v0}, Lm8/a;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-direct {p0}, Lcom/tebakgambar/levelselection/j0;->v()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public G()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "NUMBER_OF_REQUEST_IN_APP_REVIEW"

    .line 3
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "FIRST_DATE_REQUEST_IN_APP_REVIEW"

    .line 4
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "LAST_DATE_REQUEST_IN_APP_REVIEW"

    .line 5
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method H(I)V
    .registers 3

    .line 1
    iput p1, p0, Lcom/tebakgambar/levelselection/j0;->z:I

    .line 2
    new-instance v0, Lcom/tebakgambar/levelselection/f0;

    invoke-direct {v0, p0, p1}, Lcom/tebakgambar/levelselection/f0;-><init>(Lcom/tebakgambar/levelselection/j0;I)V

    invoke-static {v0}, Lt1/h;->d(Ljava/util/concurrent/Callable;)Lt1/h;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0;->y:Lt1/h;

    return-void
.end method

.method public q()Z
    .registers 7

    .line 1
    invoke-virtual {p0}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ly8/y;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/tebakgambar/levelselection/j0;->z:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_59

    const-string v1, "JUST_COMPLETED_BOSS_QUESTION"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_59

    .line 3
    :cond_18
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 4
    invoke-interface {v3, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-static {}, Lcom/google/firebase/remoteconfig/a;->i()Lcom/google/firebase/remoteconfig/a;

    move-result-object v1

    const-string v3, "v1_inAppRating_isShown"

    invoke-virtual {v1, v3}, Lcom/google/firebase/remoteconfig/a;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    .line 7
    :cond_30
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "NUMBER_OF_REQUEST_IN_APP_REVIEW"

    .line 8
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_43

    return v4

    :cond_43
    const/4 v5, 0x3

    if-ne v3, v5, :cond_51

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/tebakgambar/levelselection/j0;->x(Landroid/content/SharedPreferences;Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 10
    invoke-virtual {p0}, Lcom/tebakgambar/levelselection/j0;->G()V

    return v4

    :cond_50
    return v2

    .line 11
    :cond_51
    invoke-static {v1, v0}, Lcom/tebakgambar/levelselection/j0;->w(Ljava/util/Date;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_58

    return v2

    :cond_58
    return v4

    :cond_59
    :goto_59
    return v2
.end method

.method u()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0;->y:Lt1/h;

    new-instance v1, Lcom/tebakgambar/levelselection/h0;

    invoke-direct {v1, p0}, Lcom/tebakgambar/levelselection/h0;-><init>(Lcom/tebakgambar/levelselection/j0;)V

    sget-object v2, Lt1/h;->k:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lt1/h;->A(Lt1/f;Ljava/util/concurrent/Executor;)Lt1/h;

    return-void
.end method

###### Class com.tebakgambar.levelselection.j0.a (com.tebakgambar.levelselection.j0$a)
.class Lcom/tebakgambar/levelselection/j0$a;
.super Ljava/lang/Object;
.source "QuestionSelectionViewModel.java"

# interfaces
.implements Lwa/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tebakgambar/levelselection/j0;->D(Ljava/lang/String;)Ljava/lang/Object;
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
        "Lcom/tebakgambar/model/response/GameTokenResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method constructor <init>(Lcom/tebakgambar/levelselection/j0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwa/b;Lwa/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/GameTokenResult;",
            ">;>;",
            "Lwa/l<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/GameTokenResult;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lwa/l;->f()Z

    move-result p1

    if-eqz p1, :cond_b0

    .line 3
    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b5

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p1, p1, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    if-eqz p1, :cond_b5

    .line 4
    new-instance p1, Lcom/tebakgambar/model/GameData;

    invoke-virtual {p2}, Lwa/l;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/response/ApiResponse3;

    iget-object p2, p2, Lcom/tebakgambar/model/response/ApiResponse3;->data:Ljava/lang/Object;

    check-cast p2, Lcom/tebakgambar/model/response/GameTokenResult;

    iget-object p2, p2, Lcom/tebakgambar/model/response/GameTokenResult;->gameToken:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/tebakgambar/model/GameData;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/tebakgambar/model/GameData;->lastLevelStructure:Lcom/tebakgambar/model/request/LevelStructure2;

    .line 6
    invoke-virtual {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->getListLevel()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/tebakgambar/model/request/LevelStructure2;->isValidLevelData(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_51

    iget-object p2, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p2, p2, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {p2}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    iget p2, p2, Lcom/tebakgambar/model/Level;->id:I

    iget v0, p1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    if-ne p2, v0, :cond_51

    .line 7
    invoke-virtual {p1}, Lcom/tebakgambar/model/request/LevelStructure2;->getListLevel()Ljava/lang/String;

    move-result-object p1

    goto :goto_89

    .line 8
    :cond_51
    iget-object p2, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p2, p2, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {p2}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    iget p2, p2, Lcom/tebakgambar/model/Level;->id:I

    iget p1, p1, Lcom/tebakgambar/model/request/LevelStructure2;->level:I

    const/4 v0, 0x1

    if-ge p2, p1, :cond_64

    const/4 p1, 0x1

    goto :goto_65

    :cond_64
    const/4 p1, 0x0

    .line 9
    :goto_65
    iget-object p2, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p2, p2, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {p2}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    iget p2, p2, Lcom/tebakgambar/model/Level;->id:I

    sub-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x14

    iget-object v1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object v1, v1, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v1}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tebakgambar/model/Level;

    iget v1, v1, Lcom/tebakgambar/model/Level;->id:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x13

    invoke-static {p2, v1, p1}, Ly8/y;->p(IIZ)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_89
    iget-object p2, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-virtual {p2}, Landroidx/lifecycle/a;->j()Landroid/app/Application;

    move-result-object p2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object v0, v0, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {v0}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tebakgambar/model/Level;

    iget v0, v0, Lcom/tebakgambar/model/Level;->id:I

    invoke-static {p2, v0, p1}, Ly8/y;->q0(Landroid/content/Context;ILjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p2, p1, Lcom/tebakgambar/levelselection/j0;->s:Landroidx/databinding/m;

    invoke-virtual {p2}, Landroidx/databinding/m;->y()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tebakgambar/model/Level;

    invoke-virtual {p2}, Lcom/tebakgambar/model/Level;->getQuestionSavedData()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/tebakgambar/levelselection/j0;->r(Lcom/tebakgambar/levelselection/j0;Ljava/util/List;)V

    goto :goto_b5

    .line 12
    :cond_b0
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/j0;->s(Lcom/tebakgambar/levelselection/j0;)V

    :cond_b5
    :goto_b5
    return-void
.end method

.method public b(Lwa/b;Ljava/lang/Throwable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwa/b<",
            "Lcom/tebakgambar/model/response/ApiResponse3<",
            "Lcom/tebakgambar/model/response/GameTokenResult;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object p1, p1, Lcom/tebakgambar/levelselection/j0;->u:Landroidx/lifecycle/t;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/t;->n(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/tebakgambar/levelselection/j0$a;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {p1}, Lcom/tebakgambar/levelselection/j0;->s(Lcom/tebakgambar/levelselection/j0;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.d0 (com.tebakgambar.levelselection.d0)
.class public final synthetic Lcom/tebakgambar/levelselection/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/d0;->a:Lcom/tebakgambar/levelselection/j0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/tasks/Task;)V
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/d0;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/j0;->n(Lcom/tebakgambar/levelselection/j0;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

###### Class com.tebakgambar.levelselection.e0 (com.tebakgambar.levelselection.e0)
.class public final synthetic Lcom/tebakgambar/levelselection/e0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/e0;->a:Lcom/tebakgambar/levelselection/j0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/tebakgambar/levelselection/e0;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {v0}, Lcom/tebakgambar/levelselection/j0;->l(Lcom/tebakgambar/levelselection/j0;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.f0 (com.tebakgambar.levelselection.f0)
.class public final synthetic Lcom/tebakgambar/levelselection/f0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/f0;->a:Lcom/tebakgambar/levelselection/j0;

    iput p2, p0, Lcom/tebakgambar/levelselection/f0;->b:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/f0;->a:Lcom/tebakgambar/levelselection/j0;

    iget v1, p0, Lcom/tebakgambar/levelselection/f0;->b:I

    invoke-static {v0, v1}, Lcom/tebakgambar/levelselection/j0;->p(Lcom/tebakgambar/levelselection/j0;I)Lcom/tebakgambar/model/Level;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.g0 (com.tebakgambar.levelselection.g0)
.class public final synthetic Lcom/tebakgambar/levelselection/g0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/g0;->a:Lcom/tebakgambar/levelselection/j0;

    iput-object p2, p0, Lcom/tebakgambar/levelselection/g0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/g0;->a:Lcom/tebakgambar/levelselection/j0;

    iget-object v1, p0, Lcom/tebakgambar/levelselection/g0;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tebakgambar/levelselection/j0;->o(Lcom/tebakgambar/levelselection/j0;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class com.tebakgambar.levelselection.h0 (com.tebakgambar.levelselection.h0)
.class public final synthetic Lcom/tebakgambar/levelselection/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/h0;->a:Lcom/tebakgambar/levelselection/j0;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/h0;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/j0;->k(Lcom/tebakgambar/levelselection/j0;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method

###### Class com.tebakgambar.levelselection.i0 (com.tebakgambar.levelselection.i0)
.class public final synthetic Lcom/tebakgambar/levelselection/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lt1/f;


# instance fields
.field public final synthetic a:Lcom/tebakgambar/levelselection/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/tebakgambar/levelselection/j0;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tebakgambar/levelselection/i0;->a:Lcom/tebakgambar/levelselection/j0;

    return-void
.end method


# virtual methods
.method public final a(Lt1/h;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/tebakgambar/levelselection/i0;->a:Lcom/tebakgambar/levelselection/j0;

    invoke-static {v0, p1}, Lcom/tebakgambar/levelselection/j0;->m(Lcom/tebakgambar/levelselection/j0;Lt1/h;)Lt1/h;

    move-result-object p1

    return-object p1
.end method
