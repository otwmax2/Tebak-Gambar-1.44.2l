###### Class q1.o (q1.o)
.class public final Lq1/o;
.super Ljava/lang/Object;
.source "WorkProgressDao_Impl.java"

# interfaces
.implements Lq1/n;


# instance fields
.field private final a:Landroidx/room/h0;

.field private final b:Lx0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx0/g<",
            "Lq1/m;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lx0/l;

.field private final d:Lx0/l;


# direct methods
.method public constructor <init>(Landroidx/room/h0;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    .line 3
    new-instance v0, Lq1/o$a;

    invoke-direct {v0, p0, p1}, Lq1/o$a;-><init>(Lq1/o;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/o;->b:Lx0/g;

    .line 4
    new-instance v0, Lq1/o$b;

    invoke-direct {v0, p0, p1}, Lq1/o$b;-><init>(Lq1/o;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/o;->c:Lx0/l;

    .line 5
    new-instance v0, Lq1/o$c;

    invoke-direct {v0, p0, p1}, Lq1/o$c;-><init>(Lq1/o;Landroidx/room/h0;)V

    iput-object v0, p0, Lq1/o;->d:Lx0/l;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/o;->c:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_12

    .line 3
    invoke-interface {v0, v1}, Lb1/i;->z2(I)V

    goto :goto_15

    .line 4
    :cond_12
    invoke-interface {v0, v1, p1}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 5
    :goto_15
    iget-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->e()V

    .line 6
    :try_start_1a
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 7
    iget-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_2d

    .line 8
    iget-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    .line 9
    iget-object p1, p0, Lq1/o;->c:Lx0/l;

    invoke-virtual {p1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_2d
    move-exception p1

    .line 10
    iget-object v1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 11
    iget-object v1, p0, Lq1/o;->c:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    .line 12
    throw p1
.end method

.method public b(Lq1/m;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->e()V

    .line 3
    :try_start_a
    iget-object v0, p0, Lq1/o;->b:Lx0/g;

    invoke-virtual {v0, p1}, Lx0/g;->i(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->A()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1a

    .line 5
    iget-object p1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {p1}, Landroidx/room/h0;->i()V

    return-void

    :catchall_1a
    move-exception p1

    iget-object v0, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->i()V

    .line 6
    throw p1
.end method

.method public c()V
    .registers 4

    .line 1
    iget-object v0, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v0}, Landroidx/room/h0;->d()V

    .line 2
    iget-object v0, p0, Lq1/o;->d:Lx0/l;

    invoke-virtual {v0}, Lx0/l;->a()Lb1/k;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->e()V

    .line 4
    :try_start_10
    invoke-interface {v0}, Lb1/k;->u0()I

    .line 5
    iget-object v1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->A()V
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_23

    .line 6
    iget-object v1, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v1}, Landroidx/room/h0;->i()V

    .line 7
    iget-object v1, p0, Lq1/o;->d:Lx0/l;

    invoke-virtual {v1, v0}, Lx0/l;->f(Lb1/k;)V

    return-void

    :catchall_23
    move-exception v1

    .line 8
    iget-object v2, p0, Lq1/o;->a:Landroidx/room/h0;

    invoke-virtual {v2}, Landroidx/room/h0;->i()V

    .line 9
    iget-object v2, p0, Lq1/o;->d:Lx0/l;

    invoke-virtual {v2, v0}, Lx0/l;->f(Lb1/k;)V

    .line 10
    throw v1
.end method

###### Class q1.o.a (q1.o$a)
.class Lq1/o$a;
.super Lx0/g;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/o;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lx0/g<",
        "Lq1/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lq1/o;


# direct methods
.method constructor <init>(Lq1/o;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/o$a;->d:Lq1/o;

    invoke-direct {p0, p2}, Lx0/g;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.method public bridge synthetic g(Lb1/k;Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p2, Lq1/m;

    invoke-virtual {p0, p1, p2}, Lq1/o$a;->j(Lb1/k;Lq1/m;)V

    return-void
.end method

.method public j(Lb1/k;Lq1/m;)V
    .registers 5

    .line 1
    iget-object v0, p2, Lq1/m;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    .line 2
    invoke-interface {p1, v1}, Lb1/i;->z2(I)V

    goto :goto_c

    .line 3
    :cond_9
    invoke-interface {p1, v1, v0}, Lb1/i;->k0(ILjava/lang/String;)V

    .line 4
    :goto_c
    iget-object p2, p2, Lq1/m;->b:Landroidx/work/b;

    invoke-static {p2}, Landroidx/work/b;->k(Landroidx/work/b;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_19

    .line 5
    invoke-interface {p1, v0}, Lb1/i;->z2(I)V

    goto :goto_1c

    .line 6
    :cond_19
    invoke-interface {p1, v0, p2}, Lb1/i;->D1(I[B)V

    :goto_1c
    return-void
.end method

###### Class q1.o.b (q1.o$b)
.class Lq1/o$b;
.super Lx0/l;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/o;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/o;


# direct methods
.method constructor <init>(Lq1/o;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/o$b;->d:Lq1/o;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE from WorkProgress where work_spec_id=?"

    return-object v0
.end method

###### Class q1.o.c (q1.o$c)
.class Lq1/o$c;
.super Lx0/l;
.source "WorkProgressDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq1/o;-><init>(Landroidx/room/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lq1/o;


# direct methods
.method constructor <init>(Lq1/o;Landroidx/room/h0;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lq1/o$c;->d:Lq1/o;

    invoke-direct {p0, p2}, Lx0/l;-><init>(Landroidx/room/h0;)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 2

    const-string v0, "DELETE FROM WorkProgress"

    return-object v0
.end method
