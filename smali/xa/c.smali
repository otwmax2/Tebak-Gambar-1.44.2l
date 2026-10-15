###### Class xa.c (xa.c)
.class final Lxa/c;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Lwa/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lwa/e<",
        "Lja/d0;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/f;

.field private final b:Lcom/google/gson/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/f;Lcom/google/gson/w;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/f;",
            "Lcom/google/gson/w<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lxa/c;->a:Lcom/google/gson/f;

    .line 3
    iput-object p2, p0, Lxa/c;->b:Lcom/google/gson/w;

    return-void
.end method


# virtual methods
.method public a(Lja/d0;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lja/d0;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lxa/c;->a:Lcom/google/gson/f;

    invoke-virtual {p1}, Lja/d0;->charStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/f;->q(Ljava/io/Reader;)Lh7/a;

    move-result-object v0

    .line 2
    :try_start_a
    iget-object v1, p0, Lxa/c;->b:Lcom/google/gson/w;

    invoke-virtual {v1, v0}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    sget-object v2, Lh7/b;->x:Lh7/b;
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_24

    if-ne v0, v2, :cond_1c

    .line 4
    invoke-virtual {p1}, Lja/d0;->close()V

    return-object v1

    .line 5
    :cond_1c
    :try_start_1c
    new-instance v0, Lcom/google/gson/m;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/google/gson/m;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v0

    .line 6
    invoke-virtual {p1}, Lja/d0;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lja/d0;

    invoke-virtual {p0, p1}, Lxa/c;->a(Lja/d0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
