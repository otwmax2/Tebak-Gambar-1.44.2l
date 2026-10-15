###### Class com.google.gson.w (com.google.gson.w)
.class public abstract Lcom/google/gson/w;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
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
.method public final a()Lcom/google/gson/w;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/w<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/gson/w$a;

    invoke-direct {v0, p0}, Lcom/google/gson/w$a;-><init>(Lcom/google/gson/w;)V

    return-object v0
.end method

.method public abstract b(Lh7/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/gson/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/gson/l;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ld7/f;

    invoke-direct {v0}, Ld7/f;-><init>()V

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {v0}, Ld7/f;->F()Lcom/google/gson/l;

    move-result-object p1
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    .line 4
    new-instance v0, Lcom/google/gson/m;

    invoke-direct {v0, p1}, Lcom/google/gson/m;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public abstract d(Lh7/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.google.gson.w.a (com.google.gson.w$a)
.class Lcom/google/gson/w$a;
.super Lcom/google/gson/w;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/w;->a()Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/w;


# direct methods
.method constructor <init>(Lcom/google/gson/w;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/gson/w$a;->a:Lcom/google/gson/w;

    invoke-direct {p0}, Lcom/google/gson/w;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh7/a;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lh7/a;->x()Lh7/b;

    move-result-object v0

    sget-object v1, Lh7/b;->w:Lh7/b;

    if-ne v0, v1, :cond_d

    .line 2
    invoke-virtual {p1}, Lh7/a;->t()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_d
    iget-object v0, p0, Lcom/google/gson/w$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1}, Lcom/google/gson/w;->b(Lh7/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lh7/c;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh7/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 1
    invoke-virtual {p1}, Lh7/c;->n()Lh7/c;

    goto :goto_b

    .line 2
    :cond_6
    iget-object v0, p0, Lcom/google/gson/w$a;->a:Lcom/google/gson/w;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    :goto_b
    return-void
.end method
