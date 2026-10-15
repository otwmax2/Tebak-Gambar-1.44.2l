###### Class x1.c (x1.c)
.class public Lx1/c;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lx1/b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx1/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lx1/c;->a:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lx1/c;->b:I

    .line 4
    iput v0, p0, Lx1/c;->c:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lx1/c;->e:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lx1/c;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 1
    iget v0, p0, Lx1/c;->c:I

    return v0
.end method

.method public b()I
    .registers 2

    .line 1
    iget v0, p0, Lx1/c;->b:I

    return v0
.end method
