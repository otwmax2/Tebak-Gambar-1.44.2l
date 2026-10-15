###### Class androidx.appcompat.app.g (androidx.appcompat.app.g)
.class public abstract Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/g$b;,
        Landroidx/appcompat/app/g$a;
    }
.end annotation


# static fields
.field static o:Landroidx/appcompat/app/o$a;

.field private static p:I

.field private static q:Landroidx/core/os/h;

.field private static r:Landroidx/core/os/h;

.field private static s:Ljava/lang/Boolean;

.field private static t:Z

.field private static u:Ljava/lang/Object;

.field private static v:Landroid/content/Context;

.field private static final w:Lo/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final x:Ljava/lang/Object;

.field private static final y:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/o$a;

    new-instance v1, Landroidx/appcompat/app/o$b;

    invoke-direct {v1}, Landroidx/appcompat/app/o$b;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/o$a;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/o$a;

    const/16 v0, -0x64

    .line 2
    sput v0, Landroidx/appcompat/app/g;->p:I

    const/4 v0, 0x0

    .line 3
    sput-object v0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    .line 4
    sput-object v0, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    .line 5
    sput-object v0, Landroidx/appcompat/app/g;->s:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 6
    sput-boolean v1, Landroidx/appcompat/app/g;->t:Z

    .line 7
    sput-object v0, Landroidx/appcompat/app/g;->u:Ljava/lang/Object;

    .line 8
    sput-object v0, Landroidx/appcompat/app/g;->v:Landroid/content/Context;

    .line 9
    new-instance v0, Lo/b;

    invoke-direct {v0}, Lo/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->w:Lo/b;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->x:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->y:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic A(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/g;->U(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic B(Landroid/content/Context;)V
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/o;->c(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 2
    sput-boolean p0, Landroidx/appcompat/app/g;->t:Z

    return-void
.end method

.method static K(Landroidx/appcompat/app/g;)V
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/g;->L(Landroidx/appcompat/app/g;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method private static L(Landroidx/appcompat/app/g;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    sget-object v1, Landroidx/appcompat/app/g;->w:Lo/b;

    invoke-virtual {v1}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/g;

    if-eq v2, p0, :cond_1f

    if-nez v2, :cond_9

    .line 5
    :cond_1f
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_9

    .line 6
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    goto :goto_29

    :goto_28
    throw p0

    :goto_29
    goto :goto_28
.end method

.method static N(Landroid/content/Context;)V
    .registers 1

    .line 1
    sput-object p0, Landroidx/appcompat/app/g;->v:Landroid/content/Context;

    return-void
.end method

.method public static O(Landroidx/core/os/h;)V
    .registers 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3
    invoke-static {}, Landroidx/appcompat/app/g;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4
    invoke-virtual {p0}, Landroidx/core/os/h;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/g$a;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    .line 5
    invoke-static {v0, p0}, Landroidx/appcompat/app/g$b;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    goto :goto_30

    .line 6
    :cond_1b
    sget-object v0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    invoke-virtual {p0, v0}, Landroidx/core/os/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 7
    sget-object v0, Landroidx/appcompat/app/g;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_26
    sput-object p0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    .line 9
    invoke-static {}, Landroidx/appcompat/app/g;->h()V

    .line 10
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2d

    throw p0

    :cond_30
    :goto_30
    return-void
.end method

.method static U(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/g;->z(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3
    sget-boolean v0, Landroidx/appcompat/app/g;->t:Z

    if-nez v0, :cond_54

    .line 4
    sget-object v0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/o$a;

    new-instance v1, Landroidx/appcompat/app/e;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o$a;->execute(Ljava/lang/Runnable;)V

    goto :goto_54

    .line 5
    :cond_1c
    sget-object v0, Landroidx/appcompat/app/g;->y:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_1f
    sget-object v1, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    if-nez v1, :cond_40

    .line 7
    sget-object v1, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    if-nez v1, :cond_31

    .line 8
    invoke-static {p0}, Landroidx/appcompat/app/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/os/h;->c(Ljava/lang/String;)Landroidx/core/os/h;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    .line 9
    :cond_31
    sget-object p0, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    invoke-virtual {p0}, Landroidx/core/os/h;->f()Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 10
    monitor-exit v0

    return-void

    .line 11
    :cond_3b
    sget-object p0, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    sput-object p0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    goto :goto_53

    .line 12
    :cond_40
    sget-object v2, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    invoke-virtual {v1, v2}, Landroidx/core/os/h;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 13
    sget-object v1, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    sput-object v1, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    .line 14
    invoke-virtual {v1}, Landroidx/core/os/h;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/appcompat/app/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    :cond_53
    :goto_53
    monitor-exit v0

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_1f .. :try_end_57} :catchall_55

    throw p0
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroidx/appcompat/app/g;->B(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Landroidx/appcompat/app/g;->A(Landroid/content/Context;)V

    return-void
.end method

.method static e(Landroidx/appcompat/app/g;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->x:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_3
    invoke-static {p0}, Landroidx/appcompat/app/g;->L(Landroidx/appcompat/app/g;)V

    .line 3
    sget-object v1, Landroidx/appcompat/app/g;->w:Lo/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/b;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method private static h()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->w:Lo/b;

    invoke-virtual {v0}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/g;

    if-eqz v1, :cond_6

    .line 3
    invoke-virtual {v1}, Landroidx/appcompat/app/g;->g()Z

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public static l(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/g;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method public static m(Landroid/app/Dialog;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/g;
    .registers 3

    .line 1
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method public static o()Landroidx/core/os/h;
    .registers 1

    .line 1
    invoke-static {}, Landroidx/core/os/a;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    invoke-static {}, Landroidx/appcompat/app/g;->s()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3
    invoke-static {v0}, Landroidx/appcompat/app/g$b;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/h;->i(Landroid/os/LocaleList;)Landroidx/core/os/h;

    move-result-object v0

    return-object v0

    .line 4
    :cond_15
    sget-object v0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    if-eqz v0, :cond_1a

    return-object v0

    .line 5
    :cond_1a
    invoke-static {}, Landroidx/core/os/h;->e()Landroidx/core/os/h;

    move-result-object v0

    return-object v0
.end method

.method public static q()I
    .registers 1

    .line 1
    sget v0, Landroidx/appcompat/app/g;->p:I

    return v0
.end method

.method static s()Ljava/lang/Object;
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->u:Ljava/lang/Object;

    if-eqz v0, :cond_5

    return-object v0

    .line 2
    :cond_5
    sget-object v0, Landroidx/appcompat/app/g;->v:Landroid/content/Context;

    if-nez v0, :cond_2b

    .line 3
    sget-object v0, Landroidx/appcompat/app/g;->w:Lo/b;

    invoke-virtual {v0}, Lo/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/g;

    if-eqz v1, :cond_f

    .line 5
    invoke-virtual {v1}, Landroidx/appcompat/app/g;->p()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 6
    sput-object v1, Landroidx/appcompat/app/g;->v:Landroid/content/Context;

    .line 7
    :cond_2b
    sget-object v0, Landroidx/appcompat/app/g;->v:Landroid/content/Context;

    if-eqz v0, :cond_37

    const-string v1, "locale"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/g;->u:Ljava/lang/Object;

    .line 9
    :cond_37
    sget-object v0, Landroidx/appcompat/app/g;->u:Ljava/lang/Object;

    return-object v0
.end method

.method static u()Landroidx/core/os/h;
    .registers 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->q:Landroidx/core/os/h;

    return-object v0
.end method

.method static v()Landroidx/core/os/h;
    .registers 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->r:Landroidx/core/os/h;

    return-object v0
.end method

.method static z(Landroid/content/Context;)Z
    .registers 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_24

    .line 2
    :try_start_4
    invoke-static {p0}, Landroidx/appcompat/app/m;->a(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 3
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_24

    const-string v0, "autoStoreLocales"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Boolean;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_24

    :catch_19
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    .line 5
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Boolean;

    .line 7
    :cond_24
    :goto_24
    sget-object p0, Landroidx/appcompat/app/g;->s:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract C(Landroid/content/res/Configuration;)V
.end method

.method public abstract D(Landroid/os/Bundle;)V
.end method

.method public abstract E()V
.end method

.method public abstract F(Landroid/os/Bundle;)V
.end method

.method public abstract G()V
.end method

.method public abstract H(Landroid/os/Bundle;)V
.end method

.method public abstract I()V
.end method

.method public abstract J()V
.end method

.method public abstract M(I)Z
.end method

.method public abstract P(I)V
.end method

.method public abstract Q(Landroid/view/View;)V
.end method

.method public abstract R(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public S(I)V
    .registers 2

    return-void
.end method

.method public abstract T(Ljava/lang/CharSequence;)V
.end method

.method public abstract f(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method i(Landroid/content/Context;)V
    .registers 4

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->o:Landroidx/appcompat/app/o$a;

    new-instance v1, Landroidx/appcompat/app/f;

    invoke-direct {v1, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o$a;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public k(Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->j(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract n(I)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public p()Landroid/content/Context;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public r()I
    .registers 2

    const/16 v0, -0x64

    return v0
.end method

.method public abstract t()Landroid/view/MenuInflater;
.end method

.method public abstract w()Landroidx/appcompat/app/a;
.end method

.method public abstract x()V
.end method

.method public abstract y()V
.end method

###### Class androidx.appcompat.app.g.a (androidx.appcompat.app.g$a)
.class Landroidx/appcompat/app/g$a;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/String;)Landroid/os/LocaleList;
    .registers 1

    .line 1
    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

###### Class androidx.appcompat.app.g.b (androidx.appcompat.app.g$b)
.class Landroidx/appcompat/app/g$b;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method static a(Ljava/lang/Object;)Landroid/os/LocaleList;
    .registers 1

    .line 1
    check-cast p0, Landroid/app/LocaleManager;

    .line 2
    invoke-virtual {p0}, Landroid/app/LocaleManager;->getApplicationLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method static b(Ljava/lang/Object;Landroid/os/LocaleList;)V
    .registers 2

    .line 1
    check-cast p0, Landroid/app/LocaleManager;

    .line 2
    invoke-virtual {p0, p1}, Landroid/app/LocaleManager;->setApplicationLocales(Landroid/os/LocaleList;)V

    return-void
.end method

###### Class androidx.appcompat.app.e (androidx.appcompat.app.e)
.class public final synthetic Landroidx/appcompat/app/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/e;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/e;->o:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/app/g;->c(Landroid/content/Context;)V

    return-void
.end method

###### Class androidx.appcompat.app.f (androidx.appcompat.app.f)
.class public final synthetic Landroidx/appcompat/app/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/f;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroidx/appcompat/app/f;->o:Landroid/content/Context;

    invoke-static {v0}, Landroidx/appcompat/app/g;->d(Landroid/content/Context;)V

    return-void
.end method
