###### Class da.g (da.g)
.class public final Lda/g;
.super Lda/i1;
.source "EventLoop.kt"


# instance fields
.field private final v:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lda/i1;-><init>()V

    .line 2
    iput-object p1, p0, Lda/g;->v:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected Q()Ljava/lang/Thread;
    .registers 2

    .line 1
    iget-object v0, p0, Lda/g;->v:Ljava/lang/Thread;

    return-object v0
.end method
