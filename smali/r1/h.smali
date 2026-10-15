###### Class r1.h (r1.h)
.class public Lr1/h;
.super Ljava/lang/Object;
.source "StartWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private o:Lj1/i;

.field private p:Ljava/lang/String;

.field private q:Landroidx/work/WorkerParameters$a;


# direct methods
.method public constructor <init>(Lj1/i;Ljava/lang/String;Landroidx/work/WorkerParameters$a;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lr1/h;->o:Lj1/i;

    .line 3
    iput-object p2, p0, Lr1/h;->p:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lr1/h;->q:Landroidx/work/WorkerParameters$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lr1/h;->o:Lj1/i;

    invoke-virtual {v0}, Lj1/i;->n()Lj1/d;

    move-result-object v0

    iget-object v1, p0, Lr1/h;->p:Ljava/lang/String;

    iget-object v2, p0, Lr1/h;->q:Landroidx/work/WorkerParameters$a;

    invoke-virtual {v0, v1, v2}, Lj1/d;->k(Ljava/lang/String;Landroidx/work/WorkerParameters$a;)Z

    return-void
.end method
