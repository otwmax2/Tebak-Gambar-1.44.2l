###### Class fa.q (fa.q)
.class public Lfa/q;
.super Lfa/a;
.source "RendezvousChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lfa/a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls9/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls9/l<",
            "-TE;",
            "Lh9/t;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lfa/a;-><init>(Ls9/l;)V

    return-void
.end method


# virtual methods
.method protected final v()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final w()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
