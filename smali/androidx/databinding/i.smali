###### Class androidx.databinding.i (androidx.databinding.i)
.class public Landroidx/databinding/i;
.super Landroidx/databinding/c;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/i$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c<",
        "Landroidx/databinding/o$a;",
        "Landroidx/databinding/o;",
        "Landroidx/databinding/i$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final t:Landroidx/core/util/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/g<",
            "Landroidx/databinding/i$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Landroidx/databinding/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/c$a<",
            "Landroidx/databinding/o$a;",
            "Landroidx/databinding/o;",
            "Landroidx/databinding/i$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/core/util/g;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/core/util/g;-><init>(I)V

    sput-object v0, Landroidx/databinding/i;->t:Landroidx/core/util/g;

    .line 2
    new-instance v0, Landroidx/databinding/i$a;

    invoke-direct {v0}, Landroidx/databinding/i$a;-><init>()V

    sput-object v0, Landroidx/databinding/i;->u:Landroidx/databinding/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    sget-object v0, Landroidx/databinding/i;->u:Landroidx/databinding/c$a;

    invoke-direct {p0, v0}, Landroidx/databinding/c;-><init>(Landroidx/databinding/c$a;)V

    return-void
.end method

.method private static n(III)Landroidx/databinding/i$b;
    .registers 4

    .line 1
    sget-object v0, Landroidx/databinding/i;->t:Landroidx/core/util/g;

    invoke-virtual {v0}, Landroidx/core/util/g;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/databinding/i$b;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Landroidx/databinding/i$b;

    invoke-direct {v0}, Landroidx/databinding/i$b;-><init>()V

    .line 3
    :cond_f
    iput p0, v0, Landroidx/databinding/i$b;->a:I

    .line 4
    iput p1, v0, Landroidx/databinding/i$b;->c:I

    .line 5
    iput p2, v0, Landroidx/databinding/i$b;->b:I

    return-object v0
.end method


# virtual methods
.method public bridge synthetic f(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 4

    .line 1
    check-cast p1, Landroidx/databinding/o;

    check-cast p3, Landroidx/databinding/i$b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/databinding/i;->o(Landroidx/databinding/o;ILandroidx/databinding/i$b;)V

    return-void
.end method

.method public declared-synchronized o(Landroidx/databinding/o;ILandroidx/databinding/i$b;)V
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    invoke-super {p0, p1, p2, p3}, Landroidx/databinding/c;->f(Ljava/lang/Object;ILjava/lang/Object;)V

    if-eqz p3, :cond_b

    .line 2
    sget-object p1, Landroidx/databinding/i;->t:Landroidx/core/util/g;

    invoke-virtual {p1, p3}, Landroidx/core/util/g;->a(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 3
    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public p(Landroidx/databinding/o;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0, p3}, Landroidx/databinding/i;->n(III)Landroidx/databinding/i$b;

    move-result-object p2

    const/4 p3, 0x1

    .line 2
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/i;->o(Landroidx/databinding/o;ILandroidx/databinding/i$b;)V

    return-void
.end method

.method public q(Landroidx/databinding/o;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0, p3}, Landroidx/databinding/i;->n(III)Landroidx/databinding/i$b;

    move-result-object p2

    const/4 p3, 0x2

    .line 2
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/i;->o(Landroidx/databinding/o;ILandroidx/databinding/i$b;)V

    return-void
.end method

.method public r(Landroidx/databinding/o;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1
    invoke-static {p2, v0, p3}, Landroidx/databinding/i;->n(III)Landroidx/databinding/i$b;

    move-result-object p2

    const/4 p3, 0x4

    .line 2
    invoke-virtual {p0, p1, p3, p2}, Landroidx/databinding/i;->o(Landroidx/databinding/o;ILandroidx/databinding/i$b;)V

    return-void
.end method

###### Class androidx.databinding.i.a (androidx.databinding.i$a)
.class Landroidx/databinding/i$a;
.super Landroidx/databinding/c$a;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/databinding/c$a<",
        "Landroidx/databinding/o$a;",
        "Landroidx/databinding/o;",
        "Landroidx/databinding/i$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/databinding/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5

    .line 1
    check-cast p1, Landroidx/databinding/o$a;

    check-cast p2, Landroidx/databinding/o;

    check-cast p4, Landroidx/databinding/i$b;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/databinding/i$a;->b(Landroidx/databinding/o$a;Landroidx/databinding/o;ILandroidx/databinding/i$b;)V

    return-void
.end method

.method public b(Landroidx/databinding/o$a;Landroidx/databinding/o;ILandroidx/databinding/i$b;)V
    .registers 6

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p3, v0, :cond_22

    const/4 v0, 0x3

    if-eq p3, v0, :cond_18

    const/4 v0, 0x4

    if-eq p3, v0, :cond_10

    .line 1
    invoke-virtual {p1, p2}, Landroidx/databinding/o$a;->d(Landroidx/databinding/o;)V

    goto :goto_31

    .line 2
    :cond_10
    iget p3, p4, Landroidx/databinding/i$b;->a:I

    iget p4, p4, Landroidx/databinding/i$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/o$a;->h(Landroidx/databinding/o;II)V

    goto :goto_31

    .line 3
    :cond_18
    iget p3, p4, Landroidx/databinding/i$b;->a:I

    iget v0, p4, Landroidx/databinding/i$b;->c:I

    iget p4, p4, Landroidx/databinding/i$b;->b:I

    invoke-virtual {p1, p2, p3, v0, p4}, Landroidx/databinding/o$a;->g(Landroidx/databinding/o;III)V

    goto :goto_31

    .line 4
    :cond_22
    iget p3, p4, Landroidx/databinding/i$b;->a:I

    iget p4, p4, Landroidx/databinding/i$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/o$a;->f(Landroidx/databinding/o;II)V

    goto :goto_31

    .line 5
    :cond_2a
    iget p3, p4, Landroidx/databinding/i$b;->a:I

    iget p4, p4, Landroidx/databinding/i$b;->b:I

    invoke-virtual {p1, p2, p3, p4}, Landroidx/databinding/o$a;->e(Landroidx/databinding/o;II)V

    :goto_31
    return-void
.end method

###### Class androidx.databinding.i.b (androidx.databinding.i$b)
.class Landroidx/databinding/i$b;
.super Ljava/lang/Object;
.source "ListChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/databinding/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
