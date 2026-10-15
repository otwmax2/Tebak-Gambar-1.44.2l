###### Class k5.d0 (k5.d0)
.class Lk5/d0;
.super Ljava/lang/Object;
.source "OptionalProvider.java"

# interfaces
.implements Lk6/b;
.implements Lk6/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk6/b<",
        "TT;>;",
        "Lk6/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Lk6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a$a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lk6/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lk5/b0;->a:Lk5/b0;

    sput-object v0, Lk5/d0;->c:Lk6/a$a;

    .line 2
    sget-object v0, Lk5/c0;->a:Lk5/c0;

    sput-object v0, Lk5/d0;->d:Lk6/b;

    return-void
.end method

.method private constructor <init>(Lk6/a$a;Lk6/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a$a<",
            "TT;>;",
            "Lk6/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk5/d0;->a:Lk6/a$a;

    .line 3
    iput-object p2, p0, Lk5/d0;->b:Lk6/b;

    return-void
.end method

.method public static synthetic b()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lk5/d0;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lk6/b;)V
    .registers 1

    invoke-static {p0}, Lk5/d0;->f(Lk6/b;)V

    return-void
.end method

.method public static synthetic d(Lk6/a$a;Lk6/a$a;Lk6/b;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lk5/d0;->h(Lk6/a$a;Lk6/a$a;Lk6/b;)V

    return-void
.end method

.method static e()Lk5/d0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lk5/d0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/d0;

    sget-object v1, Lk5/d0;->c:Lk6/a$a;

    sget-object v2, Lk5/d0;->d:Lk6/b;

    invoke-direct {v0, v1, v2}, Lk5/d0;-><init>(Lk6/a$a;Lk6/b;)V

    return-object v0
.end method

.method private static synthetic f(Lk6/b;)V
    .registers 1

    return-void
.end method

.method private static synthetic g()Ljava/lang/Object;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic h(Lk6/a$a;Lk6/a$a;Lk6/b;)V
    .registers 3

    .line 1
    invoke-interface {p0, p2}, Lk6/a$a;->a(Lk6/b;)V

    .line 2
    invoke-interface {p1, p2}, Lk6/a$a;->a(Lk6/b;)V

    return-void
.end method

.method static i(Lk6/b;)Lk5/d0;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lk6/b<",
            "TT;>;)",
            "Lk5/d0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lk5/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lk5/d0;-><init>(Lk6/a$a;Lk6/b;)V

    return-object v0
.end method


# virtual methods
.method public a(Lk6/a$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/d0;->b:Lk6/b;

    .line 2
    sget-object v1, Lk5/d0;->d:Lk6/b;

    if-eq v0, v1, :cond_a

    .line 3
    invoke-interface {p1, v0}, Lk6/a$a;->a(Lk6/b;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_c
    iget-object v2, p0, Lk5/d0;->b:Lk6/b;

    if-eq v2, v1, :cond_12

    move-object v0, v2

    goto :goto_1b

    .line 6
    :cond_12
    iget-object v1, p0, Lk5/d0;->a:Lk6/a$a;

    .line 7
    new-instance v3, Lk5/a0;

    invoke-direct {v3, v1, p1}, Lk5/a0;-><init>(Lk6/a$a;Lk6/a$a;)V

    iput-object v3, p0, Lk5/d0;->a:Lk6/a$a;

    .line 8
    :goto_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_22

    if-eqz v0, :cond_21

    .line 9
    invoke-interface {p1, v2}, Lk6/a$a;->a(Lk6/b;)V

    :cond_21
    return-void

    :catchall_22
    move-exception p1

    .line 10
    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/d0;->b:Lk6/b;

    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method j(Lk6/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk5/d0;->b:Lk6/b;

    sget-object v1, Lk5/d0;->d:Lk6/b;

    if-ne v0, v1, :cond_16

    .line 2
    monitor-enter p0

    .line 3
    :try_start_7
    iget-object v0, p0, Lk5/d0;->a:Lk6/a$a;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lk5/d0;->a:Lk6/a$a;

    .line 5
    iput-object p1, p0, Lk5/d0;->b:Lk6/b;

    .line 6
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_13

    .line 7
    invoke-interface {v0, p1}, Lk6/a$a;->a(Lk6/b;)V

    return-void

    :catchall_13
    move-exception p1

    .line 8
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p1

    .line 9
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "provide() can be called only once."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

###### Class k5.a0 (k5.a0)
.class public final synthetic Lk5/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# instance fields
.field public final synthetic a:Lk6/a$a;

.field public final synthetic b:Lk6/a$a;


# direct methods
.method public synthetic constructor <init>(Lk6/a$a;Lk6/a$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/a0;->a:Lk6/a$a;

    iput-object p2, p0, Lk5/a0;->b:Lk6/a$a;

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 4

    iget-object v0, p0, Lk5/a0;->a:Lk6/a$a;

    iget-object v1, p0, Lk5/a0;->b:Lk6/a$a;

    invoke-static {v0, v1, p1}, Lk5/d0;->d(Lk6/a$a;Lk6/a$a;Lk6/b;)V

    return-void
.end method

###### Class k5.b0 (k5.b0)
.class public final synthetic Lk5/b0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# static fields
.field public static final synthetic a:Lk5/b0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/b0;

    invoke-direct {v0}, Lk5/b0;-><init>()V

    sput-object v0, Lk5/b0;->a:Lk5/b0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 2

    invoke-static {p1}, Lk5/d0;->c(Lk6/b;)V

    return-void
.end method

###### Class k5.c0 (k5.c0)
.class public final synthetic Lk5/c0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/b;


# static fields
.field public static final synthetic a:Lk5/c0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lk5/c0;

    invoke-direct {v0}, Lk5/c0;-><init>()V

    sput-object v0, Lk5/c0;->a:Lk5/c0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lk5/d0;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
