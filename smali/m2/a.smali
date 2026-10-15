###### Class m2.a (m2.a)
.class public Lm2/a;
.super Ljava/lang/Object;
.source "FileDecoder.java"

# interfaces
.implements Lz1/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lz1/e<",
        "Ljava/io/File;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3}, Lm2/a;->c(Ljava/io/File;II)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/io/File;II)Lb2/l;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "II)",
            "Lb2/l<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Lm2/b;

    invoke-direct {p2, p1}, Lm2/b;-><init>(Ljava/io/File;)V

    return-object p2
.end method
