###### Class androidx.room.c0 (androidx.room.c0)
.class final Landroidx/room/c0;
.super Ljava/lang/Object;
.source "QueryInterceptorProgram.java"

# interfaces
.implements Lb1/i;


# instance fields
.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/room/c0;->o:Ljava/util/List;

    return-void
.end method

.method private c(ILjava/lang/Object;)V
    .registers 6

    add-int/lit8 p1, p1, -0x1

    .line 1
    iget-object v0, p0, Landroidx/room/c0;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/room/c0;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    if-gt v0, p1, :cond_1b

    .line 3
    iget-object v1, p0, Landroidx/room/c0;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 4
    :cond_1b
    iget-object v0, p0, Landroidx/room/c0;->o:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public D1(I[B)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/c0;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public L0(ID)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/c0;->c(ILjava/lang/Object;)V

    return-void
.end method

.method b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/c0;->o:Ljava/util/List;

    return-object v0
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public k0(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/room/c0;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public s1(IJ)V
    .registers 4

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/c0;->c(ILjava/lang/Object;)V

    return-void
.end method

.method public z2(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/room/c0;->c(ILjava/lang/Object;)V

    return-void
.end method
