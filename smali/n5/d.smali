###### Class n5.d (n5.d)
.class public final Ln5/d;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponentDeferredProxy.java"

# interfaces
.implements Ln5/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln5/d$b;
    }
.end annotation


# static fields
.field private static final c:Ln5/h;


# instance fields
.field private final a:Lk6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/a<",
            "Ln5/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ln5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Ln5/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln5/d$b;-><init>(Ln5/d$a;)V

    sput-object v0, Ln5/d;->c:Ln5/h;

    return-void
.end method

.method public constructor <init>(Lk6/a;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/a<",
            "Ln5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ln5/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Ln5/d;->a:Lk6/a;

    .line 4
    new-instance v0, Ln5/c;

    invoke-direct {v0, p0}, Ln5/c;-><init>(Ln5/d;)V

    invoke-interface {p1, v0}, Lk6/a;->a(Lk6/a$a;)V

    return-void
.end method

.method public static synthetic e(Ln5/d;Lk6/b;)V
    .registers 2

    invoke-direct {p0, p1}, Ln5/d;->g(Lk6/b;)V

    return-void
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;JLs5/g0;Lk6/b;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Ln5/d;->h(Ljava/lang/String;Ljava/lang/String;JLs5/g0;Lk6/b;)V

    return-void
.end method

.method private synthetic g(Lk6/b;)V
    .registers 4

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    const-string v1, "Crashlytics native component now available."

    invoke-virtual {v0, v1}, Ln5/g;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln5/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-interface {p1}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln5/a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic h(Ljava/lang/String;Ljava/lang/String;JLs5/g0;Lk6/b;)V
    .registers 12

    .line 1
    invoke-interface {p5}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object p5

    move-object v0, p5

    check-cast v0, Ln5/a;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    .line 2
    invoke-interface/range {v0 .. v5}, Ln5/a;->d(Ljava/lang/String;Ljava/lang/String;JLs5/g0;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ln5/h;
    .registers 3

    .line 1
    iget-object v0, p0, Ln5/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    if-nez v0, :cond_d

    .line 2
    sget-object p1, Ln5/d;->c:Ln5/h;

    goto :goto_11

    .line 3
    :cond_d
    invoke-interface {v0, p1}, Ln5/a;->a(Ljava/lang/String;)Ln5/h;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public b()Z
    .registers 2

    .line 1
    iget-object v0, p0, Ln5/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {v0}, Ln5/a;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3

    .line 1
    iget-object v0, p0, Ln5/d;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/a;

    if-eqz v0, :cond_12

    .line 2
    invoke-interface {v0, p1}, Ln5/a;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;JLs5/g0;)V
    .registers 14

    .line 1
    invoke-static {}, Ln5/g;->f()Ln5/g;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring native open session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln5/g;->i(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Ln5/d;->a:Lk6/a;

    new-instance v7, Ln5/b;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Ln5/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLs5/g0;)V

    invoke-interface {v0, v7}, Lk6/a;->a(Lk6/a$a;)V

    return-void
.end method

###### Class n5.d.a (n5.d$a)
.class synthetic Ln5/d$a;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponentDeferredProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class n5.d.b (n5.d$b)
.class final Ln5/d$b;
.super Ljava/lang/Object;
.source "CrashlyticsNativeComponentDeferredProxy.java"

# interfaces
.implements Ln5/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ln5/d$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ln5/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ls5/f0$a;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class n5.b (n5.b)
.class public final synthetic Ln5/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:Ls5/g0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JLs5/g0;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/b;->a:Ljava/lang/String;

    iput-object p2, p0, Ln5/b;->b:Ljava/lang/String;

    iput-wide p3, p0, Ln5/b;->c:J

    iput-object p5, p0, Ln5/b;->d:Ls5/g0;

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 8

    iget-object v0, p0, Ln5/b;->a:Ljava/lang/String;

    iget-object v1, p0, Ln5/b;->b:Ljava/lang/String;

    iget-wide v2, p0, Ln5/b;->c:J

    iget-object v4, p0, Ln5/b;->d:Ls5/g0;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Ln5/d;->f(Ljava/lang/String;Ljava/lang/String;JLs5/g0;Lk6/b;)V

    return-void
.end method

###### Class n5.c (n5.c)
.class public final synthetic Ln5/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk6/a$a;


# instance fields
.field public final synthetic a:Ln5/d;


# direct methods
.method public synthetic constructor <init>(Ln5/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/c;->a:Ln5/d;

    return-void
.end method


# virtual methods
.method public final a(Lk6/b;)V
    .registers 3

    iget-object v0, p0, Ln5/c;->a:Ln5/d;

    invoke-static {v0, p1}, Ln5/d;->e(Ln5/d;Lk6/b;)V

    return-void
.end method
