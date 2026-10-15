###### Class g6.i (g6.i)
.class Lg6/i;
.super Ljava/lang/Object;
.source "ProtobufValueEncoderContext.java"

# interfaces
.implements Ld6/g;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ld6/c;

.field private final d:Lg6/f;


# direct methods
.method constructor <init>(Lg6/f;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lg6/i;->a:Z

    .line 3
    iput-boolean v0, p0, Lg6/i;->b:Z

    .line 4
    iput-object p1, p0, Lg6/i;->d:Lg6/f;

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lg6/i;->a:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lg6/i;->a:Z

    return-void

    .line 3
    :cond_8
    new-instance v0, Ld6/b;

    const-string v1, "Cannot encode a second value in the ValueEncoderContext"

    invoke-direct {v0, v1}, Ld6/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method b(Ld6/c;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lg6/i;->a:Z

    .line 2
    iput-object p1, p0, Lg6/i;->c:Ld6/c;

    .line 3
    iput-boolean p2, p0, Lg6/i;->b:Z

    return-void
.end method

.method public f(Ljava/lang/String;)Ld6/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg6/i;->a()V

    .line 2
    iget-object v0, p0, Lg6/i;->d:Lg6/f;

    iget-object v1, p0, Lg6/i;->c:Ld6/c;

    iget-boolean v2, p0, Lg6/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lg6/f;->i(Ld6/c;Ljava/lang/Object;Z)Ld6/e;

    return-object p0
.end method

.method public g(Z)Ld6/g;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg6/i;->a()V

    .line 2
    iget-object v0, p0, Lg6/i;->d:Lg6/f;

    iget-object v1, p0, Lg6/i;->c:Ld6/c;

    iget-boolean v2, p0, Lg6/i;->b:Z

    invoke-virtual {v0, v1, p1, v2}, Lg6/f;->o(Ld6/c;ZZ)Lg6/f;

    return-object p0
.end method
