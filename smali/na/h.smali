###### Class na.h (na.h)
.class public final Lna/h;
.super Lja/d0;
.source "RealResponseBody.java"


# instance fields
.field private final p:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final q:J

.field private final r:Lokio/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/e;)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lja/d0;-><init>()V

    .line 2
    iput-object p1, p0, Lna/h;->p:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lna/h;->q:J

    .line 4
    iput-object p4, p0, Lna/h;->r:Lokio/e;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lna/h;->q:J

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lna/h;->p:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public source()Lokio/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lna/h;->r:Lokio/e;

    return-object v0
.end method
