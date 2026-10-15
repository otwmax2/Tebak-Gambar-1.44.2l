###### Class b2.h (b2.h)
.class Lb2/h;
.super Ljava/lang/Object;
.source "EngineResource.java"

# interfaces
.implements Lb2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb2/l<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lb2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private c:Lb2/h$a;

.field private d:Lz1/c;

.field private e:I

.field private f:Z


# direct methods
.method constructor <init>(Lb2/l;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TZ;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Wrapped resource must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lb2/h;->a:Lb2/l;

    .line 4
    iput-boolean p2, p0, Lb2/h;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lb2/h;->f:Z

    if-nez v0, :cond_21

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3
    iget v0, p0, Lb2/h;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb2/h;->e:I

    return-void

    .line 4
    :cond_19
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call acquire on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot acquire a recycled resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .registers 3

    .line 1
    iget v0, p0, Lb2/h;->e:I

    if-gtz v0, :cond_19

    .line 2
    iget-boolean v0, p0, Lb2/h;->f:Z

    if-nez v0, :cond_11

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lb2/h;->f:Z

    .line 4
    iget-object v0, p0, Lb2/h;->a:Lb2/l;

    invoke-interface {v0}, Lb2/l;->b()V

    return-void

    .line 5
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource that has already been recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot recycle a resource while it is still acquired"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()I
    .registers 2

    .line 1
    iget-object v0, p0, Lb2/h;->a:Lb2/l;

    invoke-interface {v0}, Lb2/l;->c()I

    move-result v0

    return v0
.end method

.method d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lb2/h;->b:Z

    return v0
.end method

.method e()V
    .registers 3

    .line 1
    iget v0, p0, Lb2/h;->e:I

    if-lez v0, :cond_2a

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 3
    iget v0, p0, Lb2/h;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb2/h;->e:I

    if-nez v0, :cond_21

    .line 4
    iget-object v0, p0, Lb2/h;->c:Lb2/h$a;

    iget-object v1, p0, Lb2/h;->d:Lz1/c;

    invoke-interface {v0, v1, p0}, Lb2/h$a;->a(Lz1/c;Lb2/h;)V

    :cond_21
    return-void

    .line 5
    :cond_22
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string v1, "Must call release on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_2a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot release a recycled or not yet acquired resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method f(Lz1/c;Lb2/h$a;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lb2/h;->d:Lz1/c;

    .line 2
    iput-object p2, p0, Lb2/h;->c:Lb2/h$a;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TZ;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/h;->a:Lb2/l;

    invoke-interface {v0}, Lb2/l;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

###### Class b2.h.a (b2.h$a)
.class interface abstract Lb2/h$a;
.super Ljava/lang/Object;
.source "EngineResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Lz1/c;Lb2/h;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            "Lb2/h<",
            "*>;)V"
        }
    .end annotation
.end method
