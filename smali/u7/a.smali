###### Class u7.a (u7.a)
.class final Lu7/a;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method constructor <init>([B[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lu7/a;->a:[B

    .line 3
    iput-object p2, p0, Lu7/a;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lu7/a;->a:[B

    return-object v0
.end method

.method public b()[B
    .registers 2

    .line 1
    iget-object v0, p0, Lu7/a;->b:[B

    return-object v0
.end method
