###### Class aa.f (aa.f)
.class Laa/f;
.super Laa/e;
.source "Sequences.kt"


# direct methods
.method public static a(Ljava/util/Iterator;)Laa/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Laa/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Laa/f$a;

    invoke-direct {v0, p0}, Laa/f$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Laa/f;->b(Laa/b;)Laa/b;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Laa/b;)Laa/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Laa/b<",
            "+TT;>;)",
            "Laa/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Laa/a;

    if-eqz v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance v0, Laa/a;

    invoke-direct {v0, p0}, Laa/a;-><init>(Laa/b;)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method

###### Class aa.f.a (aa.f$a)
.class public final Laa/f$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements Laa/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laa/f;->a(Ljava/util/Iterator;)Laa/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laa/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 2

    iput-object p1, p0, Laa/f$a;->a:Ljava/util/Iterator;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Laa/f$a;->a:Ljava/util/Iterator;

    return-object v0
.end method
