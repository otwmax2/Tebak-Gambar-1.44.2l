###### Class xa.b (xa.b)
.class final Lxa/b;
.super Ljava/lang/Object;
.source "GsonRequestBodyConverter.java"

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
        "TT;",
        "Lja/b0;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lja/v;

.field private static final d:Ljava/nio/charset/Charset;


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
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "application/json; charset=UTF-8"

    .line 1
    invoke-static {v0}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lxa/b;->c:Lja/v;

    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lxa/b;->d:Ljava/nio/charset/Charset;

    return-void
.end method

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
    iput-object p1, p0, Lxa/b;->a:Lcom/google/gson/f;

    .line 3
    iput-object p2, p0, Lxa/b;->b:Lcom/google/gson/w;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lja/b0;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lja/b0;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 2
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/c;->k()Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Lxa/b;->d:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 3
    iget-object v2, p0, Lxa/b;->a:Lcom/google/gson/f;

    invoke-virtual {v2, v1}, Lcom/google/gson/f;->r(Ljava/io/Writer;)Lh7/c;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lxa/b;->b:Lcom/google/gson/w;

    invoke-virtual {v2, v1, p1}, Lcom/google/gson/w;->d(Lh7/c;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v1}, Lh7/c;->close()V

    .line 6
    sget-object p1, Lxa/b;->c:Lja/v;

    invoke-virtual {v0}, Lokio/c;->m()Lokio/f;

    move-result-object v0

    invoke-static {p1, v0}, Lja/b0;->create(Lja/v;Lokio/f;)Lja/b0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lxa/b;->a(Ljava/lang/Object;)Lja/b0;

    move-result-object p1

    return-object p1
.end method
