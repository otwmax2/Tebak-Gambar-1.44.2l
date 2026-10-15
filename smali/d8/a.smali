###### Class d8.a (d8.a)
.class public Ld8/a;
.super Ljava/lang/Object;

# interfaces
.implements Lz7/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld8/a$d;,
        Ld8/a$e;
    }
.end annotation


# static fields
.field private static g:Ld8/a;

.field private static h:Landroid/os/Handler;

.field private static i:Landroid/os/Handler;

.field private static final j:Ljava/lang/Runnable;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld8/a$e;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lz7/b;

.field private d:Ld8/b;

.field private e:Ld8/c;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ld8/a;

    invoke-direct {v0}, Ld8/a;-><init>()V

    sput-object v0, Ld8/a;->g:Ld8/a;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ld8/a;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Ld8/a;->i:Landroid/os/Handler;

    new-instance v0, Ld8/a$b;

    invoke-direct {v0}, Ld8/a$b;-><init>()V

    sput-object v0, Ld8/a;->j:Ljava/lang/Runnable;

    new-instance v0, Ld8/a$c;

    invoke-direct {v0}, Ld8/a$c;-><init>()V

    sput-object v0, Ld8/a;->k:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld8/a;->a:Ljava/util/List;

    new-instance v0, Ld8/b;

    invoke-direct {v0}, Ld8/b;-><init>()V

    iput-object v0, p0, Ld8/a;->d:Ld8/b;

    new-instance v0, Lz7/b;

    invoke-direct {v0}, Lz7/b;-><init>()V

    iput-object v0, p0, Ld8/a;->c:Lz7/b;

    new-instance v0, Ld8/c;

    new-instance v1, Le8/c;

    invoke-direct {v1}, Le8/c;-><init>()V

    invoke-direct {v0, v1}, Ld8/c;-><init>(Le8/c;)V

    iput-object v0, p0, Ld8/a;->e:Ld8/c;

    return-void
.end method

.method static synthetic b(Ld8/a;)Ld8/c;
    .registers 1

    iget-object p0, p0, Ld8/a;->e:Ld8/c;

    return-object p0
.end method

.method private d(J)V
    .registers 8

    iget-object v0, p0, Ld8/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_31

    iget-object v0, p0, Ld8/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld8/a$e;

    iget v2, p0, Ld8/a;->b:I

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Ld8/a$e;->a(IJ)V

    instance-of v2, v1, Ld8/a$d;

    if-eqz v2, :cond_e

    check-cast v1, Ld8/a$d;

    iget v2, p0, Ld8/a;->b:I

    invoke-interface {v1, v2, p1, p2}, Ld8/a$d;->b(IJ)V

    goto :goto_e

    :cond_31
    return-void
.end method

.method private e(Landroid/view/View;Lz7/a;Lorg/json/JSONObject;Ld8/d;)V
    .registers 6

    sget-object v0, Ld8/d;->o:Ld8/d;

    if-ne p4, v0, :cond_6

    const/4 p4, 0x1

    goto :goto_7

    :cond_6
    const/4 p4, 0x0

    :goto_7
    invoke-interface {p2, p1, p3, p0, p4}, Lz7/a;->b(Landroid/view/View;Lorg/json/JSONObject;Lz7/a$a;Z)V

    return-void
.end method

.method private f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 6

    iget-object v0, p0, Ld8/a;->c:Lz7/b;

    invoke-virtual {v0}, Lz7/b;->b()Lz7/a;

    move-result-object v0

    iget-object v1, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v1, p1}, Ld8/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-interface {v0, p2}, Lz7/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2, p1}, La8/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p2, v1}, La8/b;->k(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-static {p3, p2}, La8/b;->h(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1b
    return-void
.end method

.method private g(Landroid/view/View;Lorg/json/JSONObject;)Z
    .registers 4

    iget-object v0, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v0, p1}, Ld8/b;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-static {p2, p1}, La8/b;->f(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p1, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {p1}, Ld8/b;->m()V

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private i(Landroid/view/View;Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v0, p1}, Ld8/b;->g(Landroid/view/View;)Ld8/b$a;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p2, p1}, La8/b;->e(Lorg/json/JSONObject;Ld8/b$a;)V

    :cond_b
    return-void
.end method

.method static synthetic j(Ld8/a;)V
    .registers 1

    invoke-direct {p0}, Ld8/a;->q()V

    return-void
.end method

.method static synthetic m()Landroid/os/Handler;
    .registers 1

    sget-object v0, Ld8/a;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Ld8/a;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/Runnable;
    .registers 1

    sget-object v0, Ld8/a;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static p()Ld8/a;
    .registers 1

    sget-object v0, Ld8/a;->g:Ld8/a;

    return-object v0
.end method

.method private q()V
    .registers 1

    invoke-direct {p0}, Ld8/a;->r()V

    invoke-virtual {p0}, Ld8/a;->l()V

    invoke-direct {p0}, Ld8/a;->s()V

    return-void
.end method

.method private r()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Ld8/a;->b:I

    invoke-static {}, La8/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Ld8/a;->f:J

    return-void
.end method

.method private s()V
    .registers 5

    invoke-static {}, La8/d;->a()J

    move-result-wide v0

    iget-wide v2, p0, Ld8/a;->f:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ld8/a;->d(J)V

    return-void
.end method

.method private t()V
    .registers 5

    sget-object v0, Ld8/a;->i:Landroid/os/Handler;

    if-nez v0, :cond_1d

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Ld8/a;->i:Landroid/os/Handler;

    sget-object v1, Ld8/a;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Ld8/a;->i:Landroid/os/Handler;

    sget-object v1, Ld8/a;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1d
    return-void
.end method

.method private u()V
    .registers 3

    sget-object v0, Ld8/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_c

    sget-object v1, Ld8/a;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Ld8/a;->i:Landroid/os/Handler;

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lz7/a;Lorg/json/JSONObject;)V
    .registers 6

    invoke-static {p1}, La8/f;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v0, p1}, Ld8/b;->i(Landroid/view/View;)Ld8/d;

    move-result-object v0

    sget-object v1, Ld8/d;->q:Ld8/d;

    if-ne v0, v1, :cond_12

    return-void

    :cond_12
    invoke-interface {p2, p1}, Lz7/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p3, v1}, La8/b;->h(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, v1}, Ld8/a;->g(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result p3

    if-nez p3, :cond_25

    invoke-direct {p0, p1, v1}, Ld8/a;->i(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-direct {p0, p1, p2, v1, v0}, Ld8/a;->e(Landroid/view/View;Lz7/a;Lorg/json/JSONObject;Ld8/d;)V

    :cond_25
    iget p1, p0, Ld8/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ld8/a;->b:I

    return-void
.end method

.method public c()V
    .registers 1

    invoke-direct {p0}, Ld8/a;->t()V

    return-void
.end method

.method public h()V
    .registers 3

    invoke-virtual {p0}, Ld8/a;->k()V

    iget-object v0, p0, Ld8/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Ld8/a;->h:Landroid/os/Handler;

    new-instance v1, Ld8/a$a;

    invoke-direct {v1, p0}, Ld8/a$a;-><init>(Ld8/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public k()V
    .registers 1

    invoke-direct {p0}, Ld8/a;->u()V

    return-void
.end method

.method l()V
    .registers 9

    iget-object v0, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v0}, Ld8/b;->j()V

    invoke-static {}, La8/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Ld8/a;->c:Lz7/b;

    invoke-virtual {v2}, Lz7/b;->a()Lz7/a;

    move-result-object v2

    iget-object v3, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v3}, Ld8/b;->h()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_50

    iget-object v3, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v3}, Ld8/b;->h()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v4}, Lz7/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v7, v5}, Ld8/b;->f(Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0, v5, v7, v6}, Ld8/a;->f(Ljava/lang/String;Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-static {v6}, La8/b;->d(Lorg/json/JSONObject;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Ld8/a;->e:Ld8/c;

    invoke-virtual {v5, v6, v7, v0, v1}, Ld8/c;->e(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_26

    :cond_50
    iget-object v3, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v3}, Ld8/b;->c()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_74

    invoke-interface {v2, v4}, Lz7/a;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    sget-object v5, Ld8/d;->o:Ld8/d;

    invoke-direct {p0, v4, v2, v3, v5}, Ld8/a;->e(Landroid/view/View;Lz7/a;Lorg/json/JSONObject;Ld8/d;)V

    invoke-static {v3}, La8/b;->d(Lorg/json/JSONObject;)V

    iget-object v2, p0, Ld8/a;->e:Ld8/c;

    iget-object v4, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v4}, Ld8/b;->c()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Ld8/c;->d(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_79

    :cond_74
    iget-object v0, p0, Ld8/a;->e:Ld8/c;

    invoke-virtual {v0}, Ld8/c;->c()V

    :goto_79
    iget-object v0, p0, Ld8/a;->d:Ld8/b;

    invoke-virtual {v0}, Ld8/b;->l()V

    return-void
.end method

###### Class d8.a.RunnableC0146a (d8.a$a)
.class Ld8/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld8/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Ld8/a;


# direct methods
.method constructor <init>(Ld8/a;)V
    .registers 2

    iput-object p1, p0, Ld8/a$a;->o:Ld8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Ld8/a$a;->o:Ld8/a;

    invoke-static {v0}, Ld8/a;->b(Ld8/a;)Ld8/c;

    move-result-object v0

    invoke-virtual {v0}, Ld8/c;->c()V

    return-void
.end method

###### Class d8.a.b (d8.a$b)
.class final Ld8/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Ld8/a;->p()Ld8/a;

    move-result-object v0

    invoke-static {v0}, Ld8/a;->j(Ld8/a;)V

    return-void
.end method

###### Class d8.a.c (d8.a$c)
.class final Ld8/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    invoke-static {}, Ld8/a;->m()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-static {}, Ld8/a;->m()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ld8/a;->n()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Ld8/a;->m()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Ld8/a;->o()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1e
    return-void
.end method

###### Class d8.a.d (d8.a$d)
.class public interface abstract Ld8/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ld8/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation


# virtual methods
.method public abstract b(IJ)V
.end method

###### Class d8.a.e (d8.a$e)
.class public interface abstract Ld8/a$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a(IJ)V
.end method
