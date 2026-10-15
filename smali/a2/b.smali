###### Class a2.b (a2.b)
.class public La2/b;
.super Ljava/lang/Object;
.source "ByteArrayFetcher.java"

# interfaces
.implements La2/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La2/c<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La2/b;->a:[B

    .line 3
    iput-object p2, p0, La2/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, La2/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic b(Lv1/i;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, La2/b;->d(Lv1/i;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public cancel()V
    .registers 1

    return-void
.end method

.method public d(Lv1/i;)Ljava/io/InputStream;
    .registers 3

    .line 1
    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object v0, p0, La2/b;->a:[B

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method
