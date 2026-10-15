###### Class s2.e (s2.e)
.class public Ls2/e;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Ls2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls2/f<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final o:Lg2/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg2/l<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final p:Lp2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/c<",
            "TZ;TR;>;"
        }
    .end annotation
.end field

.field private final q:Ls2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/b<",
            "TT;TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg2/l;Lp2/c;Ls2/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/l<",
            "TA;TT;>;",
            "Lp2/c<",
            "TZ;TR;>;",
            "Ls2/b<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ModelLoader must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ls2/e;->o:Lg2/l;

    const-string p1, "Transcoder must not be null"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Ls2/e;->p:Lp2/c;

    const-string p1, "DataLoadProvider must not be null"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Ls2/e;->q:Ls2/b;

    return-void
.end method


# virtual methods
.method public a()Lz1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->q:Ls2/b;

    invoke-interface {v0}, Ls2/b;->a()Lz1/b;

    move-result-object v0

    return-object v0
.end method

.method public b()Lp2/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lp2/c<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->p:Lp2/c;

    return-object v0
.end method

.method public d()Lz1/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/f<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->q:Ls2/b;

    invoke-interface {v0}, Ls2/b;->d()Lz1/f;

    move-result-object v0

    return-object v0
.end method

.method public f()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->q:Ls2/b;

    invoke-interface {v0}, Ls2/b;->f()Lz1/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Lz1/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lz1/e<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->q:Ls2/b;

    invoke-interface {v0}, Ls2/b;->g()Lz1/e;

    move-result-object v0

    return-object v0
.end method

.method public h()Lg2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg2/l<",
            "TA;TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls2/e;->o:Lg2/l;

    return-object v0
.end method
