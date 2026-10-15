###### Class v1.j (v1.j)
.class public Lv1/j;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lq2/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/j$e;,
        Lv1/j$d;,
        Lv1/j$c;,
        Lv1/j$b;
    }
.end annotation


# instance fields
.field private final o:Landroid/content/Context;

.field private final p:Lq2/g;

.field private final q:Lq2/l;

.field private final r:Lq2/m;

.field private final s:Lv1/g;

.field private final t:Lv1/j$d;

.field private u:Lv1/j$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lq2/g;Lq2/l;)V
    .registers 10

    .line 1
    new-instance v4, Lq2/m;

    invoke-direct {v4}, Lq2/m;-><init>()V

    new-instance v5, Lq2/d;

    invoke-direct {v5}, Lq2/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lv1/j;-><init>(Landroid/content/Context;Lq2/g;Lq2/l;Lq2/m;Lq2/d;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lq2/g;Lq2/l;Lq2/m;Lq2/d;)V
    .registers 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lv1/j;->o:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lv1/j;->p:Lq2/g;

    .line 5
    iput-object p3, p0, Lv1/j;->q:Lq2/l;

    .line 6
    iput-object p4, p0, Lv1/j;->r:Lq2/m;

    .line 7
    invoke-static {p1}, Lv1/g;->i(Landroid/content/Context;)Lv1/g;

    move-result-object p3

    iput-object p3, p0, Lv1/j;->s:Lv1/g;

    .line 8
    new-instance p3, Lv1/j$d;

    invoke-direct {p3, p0}, Lv1/j$d;-><init>(Lv1/j;)V

    iput-object p3, p0, Lv1/j;->t:Lv1/j$d;

    .line 9
    new-instance p3, Lv1/j$e;

    invoke-direct {p3, p4}, Lv1/j$e;-><init>(Lq2/m;)V

    invoke-virtual {p5, p1, p3}, Lq2/d;->a(Landroid/content/Context;Lq2/c$a;)Lq2/c;

    move-result-object p1

    .line 10
    invoke-static {}, Lx2/h;->i()Z

    move-result p3

    if-eqz p3, :cond_3d

    .line 11
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lv1/j$a;

    invoke-direct {p4, p0, p2}, Lv1/j$a;-><init>(Lv1/j;Lq2/g;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_40

    .line 12
    :cond_3d
    invoke-interface {p2, p0}, Lq2/g;->a(Lq2/h;)V

    .line 13
    :goto_40
    invoke-interface {p2, p1}, Lq2/g;->a(Lq2/h;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 1

    .line 1
    invoke-static {p0}, Lv1/j;->u(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lv1/j;)Landroid/content/Context;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->o:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lv1/j;)Lv1/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->s:Lv1/g;

    return-object p0
.end method

.method static synthetic f(Lv1/j;)Lq2/m;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->r:Lq2/m;

    return-object p0
.end method

.method static synthetic n(Lv1/j;)Lq2/g;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->p:Lq2/g;

    return-object p0
.end method

.method static synthetic o(Lv1/j;)Lv1/j$d;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->t:Lv1/j$d;

    return-object p0
.end method

.method static synthetic p(Lv1/j;)Lv1/j$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j;->u:Lv1/j$b;

    return-object p0
.end method

.method private static u(Ljava/lang/Object;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method private z(Ljava/lang/Class;)Lv1/d;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lv1/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/j;->o:Landroid/content/Context;

    invoke-static {p1, v0}, Lv1/g;->e(Ljava/lang/Class;Landroid/content/Context;)Lg2/l;

    move-result-object v3

    .line 2
    iget-object v0, p0, Lv1/j;->o:Landroid/content/Context;

    invoke-static {p1, v0}, Lv1/g;->b(Ljava/lang/Class;Landroid/content/Context;)Lg2/l;

    move-result-object v4

    if-eqz p1, :cond_39

    if-nez v3, :cond_39

    if-eqz v4, :cond_13

    goto :goto_39

    .line 3
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " which there is a registered ModelLoader, if you are using a custom model, you must first call"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_39
    :goto_39
    iget-object v0, p0, Lv1/j;->t:Lv1/j$d;

    new-instance v10, Lv1/d;

    iget-object v5, p0, Lv1/j;->o:Landroid/content/Context;

    iget-object v6, p0, Lv1/j;->s:Lv1/g;

    iget-object v7, p0, Lv1/j;->r:Lq2/m;

    iget-object v8, p0, Lv1/j;->p:Lq2/g;

    move-object v1, v10

    move-object v2, p1

    move-object v9, v0

    invoke-direct/range {v1 .. v9}, Lv1/d;-><init>(Ljava/lang/Class;Lg2/l;Lg2/l;Landroid/content/Context;Lv1/g;Lq2/m;Lq2/g;Lv1/j$d;)V

    invoke-virtual {v0, v10}, Lv1/j$d;->a(Lv1/e;)Lv1/e;

    move-result-object p1

    check-cast p1, Lv1/d;

    return-object p1
.end method


# virtual methods
.method public A()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/j;->s:Lv1/g;

    invoke-virtual {v0}, Lv1/g;->h()V

    return-void
.end method

.method public B(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lv1/j;->s:Lv1/g;

    invoke-virtual {v0, p1}, Lv1/g;->u(I)V

    return-void
.end method

.method public C()V
    .registers 2

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lv1/j;->r:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->b()V

    return-void
.end method

.method public D()V
    .registers 2

    .line 1
    invoke-static {}, Lx2/h;->b()V

    .line 2
    iget-object v0, p0, Lv1/j;->r:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->e()V

    return-void
.end method

.method public E(Lg2/l;Ljava/lang/Class;)Lv1/j$c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lg2/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lv1/j$c<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv1/j$c;

    invoke-direct {v0, p0, p1, p2}, Lv1/j$c;-><init>(Lv1/j;Lg2/l;Ljava/lang/Class;)V

    return-object v0
.end method

.method public b()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/j;->D()V

    return-void
.end method

.method public h()V
    .registers 1

    .line 1
    invoke-virtual {p0}, Lv1/j;->C()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 1
    iget-object v0, p0, Lv1/j;->r:Lq2/m;

    invoke-virtual {v0}, Lq2/m;->a()V

    return-void
.end method

.method public q()Lv1/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/d<",
            "[B>;"
        }
    .end annotation

    .line 1
    const-class v0, [B

    invoke-direct {p0, v0}, Lv1/j;->z(Ljava/lang/Class;)Lv1/d;

    move-result-object v0

    new-instance v1, Lw2/c;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lw2/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lv1/c;->T(Lz1/c;)Lv1/c;

    move-result-object v0

    sget-object v1, Lb2/b;->r:Lb2/b;

    invoke-virtual {v0, v1}, Lv1/c;->H(Lb2/b;)Lv1/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lv1/c;->U(Z)Lv1/c;

    move-result-object v0

    check-cast v0, Lv1/d;

    return-object v0
.end method

.method public r()Lv1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lv1/j;->z(Ljava/lang/Class;)Lv1/d;

    move-result-object v0

    iget-object v1, p0, Lv1/j;->o:Landroid/content/Context;

    invoke-static {v1}, Lw2/a;->a(Landroid/content/Context;)Lz1/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lv1/c;->T(Lz1/c;)Lv1/c;

    move-result-object v0

    check-cast v0, Lv1/d;

    return-object v0
.end method

.method public s()Lv1/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lv1/j;->z(Ljava/lang/Class;)Lv1/d;

    move-result-object v0

    return-object v0
.end method

.method public t()Lv1/d;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/d<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lv1/j;->z(Ljava/lang/Class;)Lv1/d;

    move-result-object v0

    return-object v0
.end method

.method public v(Landroid/net/Uri;)Lv1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lv1/d<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/j;->t()Lv1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1/c;->O(Ljava/lang/Object;)Lv1/c;

    move-result-object p1

    check-cast p1, Lv1/d;

    return-object p1
.end method

.method public w(Ljava/lang/Integer;)Lv1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lv1/d<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/j;->r()Lv1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1/c;->O(Ljava/lang/Object;)Lv1/c;

    move-result-object p1

    check-cast p1, Lv1/d;

    return-object p1
.end method

.method public x(Ljava/lang/String;)Lv1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/d<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/j;->s()Lv1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1/c;->O(Ljava/lang/Object;)Lv1/c;

    move-result-object p1

    check-cast p1, Lv1/d;

    return-object p1
.end method

.method public y([B)Lv1/d;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lv1/d<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lv1/j;->q()Lv1/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lv1/c;->O(Ljava/lang/Object;)Lv1/c;

    move-result-object p1

    check-cast p1, Lv1/d;

    return-object p1
.end method

###### Class v1.j.a (v1.j$a)
.class Lv1/j$a;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv1/j;-><init>(Landroid/content/Context;Lq2/g;Lq2/l;Lq2/m;Lq2/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic o:Lq2/g;

.field final synthetic p:Lv1/j;


# direct methods
.method constructor <init>(Lv1/j;Lq2/g;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lv1/j$a;->p:Lv1/j;

    iput-object p2, p0, Lv1/j$a;->o:Lq2/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1
    iget-object v0, p0, Lv1/j$a;->o:Lq2/g;

    iget-object v1, p0, Lv1/j$a;->p:Lv1/j;

    invoke-interface {v0, v1}, Lq2/g;->a(Lq2/h;)V

    return-void
.end method

###### Class v1.j.b (v1.j$b)
.class public interface abstract Lv1/j$b;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lv1/e;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lv1/e<",
            "TT;***>;)V"
        }
    .end annotation
.end method

###### Class v1.j.c (v1.j$c)
.class public final Lv1/j$c;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv1/j$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lv1/j;


# direct methods
.method constructor <init>(Lv1/j;Lg2/l;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/l<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/j$c;->c:Lv1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lv1/j$c;->a:Lg2/l;

    .line 3
    iput-object p3, p0, Lv1/j$c;->b:Ljava/lang/Class;

    return-void
.end method

.method static synthetic a(Lv1/j$c;)Lg2/l;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j$c;->a:Lg2/l;

    return-object p0
.end method

.method static synthetic b(Lv1/j$c;)Ljava/lang/Class;
    .registers 1

    .line 1
    iget-object p0, p0, Lv1/j$c;->b:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Lv1/j$c$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lv1/j$c<",
            "TA;TT;>.a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lv1/j$c$a;

    invoke-direct {v0, p0, p1}, Lv1/j$c$a;-><init>(Lv1/j$c;Ljava/lang/Object;)V

    return-object v0
.end method

###### Class v1.j.c.a (v1.j$c$a)
.class public final Lv1/j$c$a;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/j$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field final synthetic d:Lv1/j$c;


# direct methods
.method constructor <init>(Lv1/j$c;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lv1/j$c$a;->c:Z

    .line 3
    iput-object p2, p0, Lv1/j$c$a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lv1/j;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lv1/j$c$a;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lv1/f;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lv1/f<",
            "TA;TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v0, v0, Lv1/j$c;->c:Lv1/j;

    invoke-static {v0}, Lv1/j;->o(Lv1/j;)Lv1/j$d;

    move-result-object v0

    new-instance v11, Lv1/f;

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v1, v1, Lv1/j$c;->c:Lv1/j;

    invoke-static {v1}, Lv1/j;->d(Lv1/j;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v1, v1, Lv1/j$c;->c:Lv1/j;

    invoke-static {v1}, Lv1/j;->e(Lv1/j;)Lv1/g;

    move-result-object v3

    iget-object v4, p0, Lv1/j$c$a;->b:Ljava/lang/Class;

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    invoke-static {v1}, Lv1/j$c;->a(Lv1/j$c;)Lg2/l;

    move-result-object v5

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    invoke-static {v1}, Lv1/j$c;->b(Lv1/j$c;)Ljava/lang/Class;

    move-result-object v6

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v1, v1, Lv1/j$c;->c:Lv1/j;

    invoke-static {v1}, Lv1/j;->f(Lv1/j;)Lq2/m;

    move-result-object v8

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v1, v1, Lv1/j$c;->c:Lv1/j;

    invoke-static {v1}, Lv1/j;->n(Lv1/j;)Lq2/g;

    move-result-object v9

    iget-object v1, p0, Lv1/j$c$a;->d:Lv1/j$c;

    iget-object v1, v1, Lv1/j$c;->c:Lv1/j;

    invoke-static {v1}, Lv1/j;->o(Lv1/j;)Lv1/j$d;

    move-result-object v10

    move-object v1, v11

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lv1/f;-><init>(Landroid/content/Context;Lv1/g;Ljava/lang/Class;Lg2/l;Ljava/lang/Class;Ljava/lang/Class;Lq2/m;Lq2/g;Lv1/j$d;)V

    invoke-virtual {v0, v11}, Lv1/j$d;->a(Lv1/e;)Lv1/e;

    move-result-object p1

    check-cast p1, Lv1/f;

    .line 2
    iget-boolean v0, p0, Lv1/j$c$a;->c:Z

    if-eqz v0, :cond_54

    .line 3
    iget-object v0, p0, Lv1/j$c$a;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lv1/e;->s(Ljava/lang/Object;)Lv1/e;

    :cond_54
    return-object p1
.end method

###### Class v1.j.d (v1.j$d)
.class Lv1/j$d;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lv1/j;


# direct methods
.method constructor <init>(Lv1/j;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lv1/j$d;->a:Lv1/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv1/e;)Lv1/e;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lv1/e<",
            "TA;***>;>(TX;)TX;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv1/j$d;->a:Lv1/j;

    invoke-static {v0}, Lv1/j;->p(Lv1/j;)Lv1/j$b;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lv1/j$d;->a:Lv1/j;

    invoke-static {v0}, Lv1/j;->p(Lv1/j;)Lv1/j$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lv1/j$b;->a(Lv1/e;)V

    :cond_11
    return-object p1
.end method

###### Class v1.j.e (v1.j$e)
.class Lv1/j$e;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lq2/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Lq2/m;


# direct methods
.method public constructor <init>(Lq2/m;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lv1/j$e;->a:Lq2/m;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    iget-object p1, p0, Lv1/j$e;->a:Lq2/m;

    invoke-virtual {p1}, Lq2/m;->d()V

    :cond_7
    return-void
.end method
