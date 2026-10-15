###### Class i2.b (i2.b)
.class public Li2/b;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lg2/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/l;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    .line 1
    invoke-direct {p0, v0}, Li2/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Li2/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;II)La2/c;
    .registers 4

    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1, p2, p3}, Li2/b;->b([BII)La2/c;

    move-result-object p1

    return-object p1
.end method

.method public b([BII)La2/c;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)",
            "La2/c<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, La2/b;

    iget-object p3, p0, Li2/b;->a:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, La2/b;-><init>([BLjava/lang/String;)V

    return-object p2
.end method

###### Class i2.b.a (i2.b$a)
.class public Li2/b$a;
.super Ljava/lang/Object;
.source "StreamByteArrayLoader.java"

# interfaces
.implements Lg2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/m<",
        "[B",
        "Ljava/io/InputStream;",
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
.method public a(Landroid/content/Context;Lg2/c;)Lg2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg2/c;",
            ")",
            "Lg2/l<",
            "[B",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Li2/b;

    invoke-direct {p1}, Li2/b;-><init>()V

    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method
