###### Class n5.i (n5.i)
.class public final Ln5/i;
.super Ljava/lang/Object;
.source "ProcessDetailsProvider.kt"


# static fields
.field public static final a:Ln5/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ln5/i;

    invoke-direct {v0}, Ln5/i;-><init>()V

    sput-object v0, Ln5/i;->a:Ln5/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Ln5/i;Ljava/lang/String;IIZILjava/lang/Object;)Ls5/f0$e$d$a$c;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p3, 0x0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    .line 1
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Ln5/i;->b(Ljava/lang/String;IIZ)Ls5/f0$e$d$a$c;

    move-result-object p0

    return-object p0
.end method

.method private final f()Ljava/lang/String;
    .registers 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x21

    if-lt v0, v2, :cond_12

    .line 2
    invoke-static {}, Landroid/os/Process;->myProcessName()Ljava/lang/String;

    move-result-object v1

    const-string v0, "{\n      Process.myProcessName()\n    }"

    .line 3
    invoke-static {v1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1e

    :cond_12
    const/16 v2, 0x1c

    if-lt v0, v2, :cond_1e

    .line 4
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v1, v0

    :cond_1e
    :goto_1e
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)Ls5/f0$e$d$a$c;
    .registers 12

    const-string v0, "processName"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v7}, Ln5/i;->c(Ln5/i;Ljava/lang/String;IIZILjava/lang/Object;)Ls5/f0$e$d$a$c;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;IIZ)Ls5/f0$e$d$a$c;
    .registers 6

    const-string v0, "processName"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Ls5/f0$e$d$a$c;->a()Ls5/f0$e$d$a$c$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ls5/f0$e$d$a$c$a;->e(Ljava/lang/String;)Ls5/f0$e$d$a$c$a;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p2}, Ls5/f0$e$d$a$c$a;->d(I)Ls5/f0$e$d$a$c$a;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p3}, Ls5/f0$e$d$a$c$a;->c(I)Ls5/f0$e$d$a$c$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Ls5/f0$e$d$a$c$a;->b(Z)Ls5/f0$e$d$a$c$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ls5/f0$e$d$a$c$a;->a()Ls5/f0$e$d$a$c;

    move-result-object p1

    const-string p2, "builder()\n      .setProc\u2026ltProcess)\n      .build()"

    invoke-static {p1, p2}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ls5/f0$e$d$a$c;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v2, "activity"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/app/ActivityManager;

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    check-cast p1, Landroid/app/ActivityManager;

    goto :goto_20

    :cond_1f
    move-object p1, v3

    :goto_20
    if-eqz p1, :cond_26

    .line 4
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    :cond_26
    if-nez v3, :cond_2c

    invoke-static {}, Li9/j;->e()Ljava/util/List;

    move-result-object v3

    .line 5
    :cond_2c
    invoke-static {v3}, Li9/j;->t(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 8
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, v0, :cond_4c

    const/4 v4, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v4, 0x0

    :goto_4d
    if-eqz v4, :cond_39

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 9
    :cond_53
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {v2, v0}, Li9/j;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_62
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 12
    invoke-static {}, Ls5/f0$e$d$a$c;->a()Ls5/f0$e$d$a$c$a;

    move-result-object v3

    .line 13
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ls5/f0$e$d$a$c$a;->e(Ljava/lang/String;)Ls5/f0$e$d$a$c$a;

    move-result-object v3

    .line 14
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v3, v4}, Ls5/f0$e$d$a$c$a;->d(I)Ls5/f0$e$d$a$c$a;

    move-result-object v3

    .line 15
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v3, v4}, Ls5/f0$e$d$a$c$a;->c(I)Ls5/f0$e$d$a$c$a;

    move-result-object v3

    .line 16
    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v2, v1}, Lt9/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Ls5/f0$e$d$a$c$a;->b(Z)Ls5/f0$e$d$a$c$a;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ls5/f0$e$d$a$c$a;->a()Ls5/f0$e$d$a$c;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_96
    return-object p1
.end method

.method public final e(Landroid/content/Context;)Ls5/f0$e$d$a$c;
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 2
    invoke-virtual {p0, p1}, Ln5/i;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ls5/f0$e$d$a$c;

    invoke-virtual {v1}, Ls5/f0$e$d$a$c;->c()I

    move-result v1

    if-ne v1, v3, :cond_26

    const/4 v1, 0x1

    goto :goto_27

    :cond_26
    const/4 v1, 0x0

    :goto_27
    if-eqz v1, :cond_11

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    check-cast v0, Ls5/f0$e$d$a$c;

    if-nez v0, :cond_3d

    .line 3
    invoke-direct {p0}, Ln5/i;->f()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Ln5/i;->c(Ln5/i;Ljava/lang/String;IIZILjava/lang/Object;)Ls5/f0$e$d$a$c;

    move-result-object v0

    :cond_3d
    return-object v0
.end method
