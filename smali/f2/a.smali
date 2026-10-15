###### Class f2.a (f2.a)
.class public final Lf2/a;
.super Ljava/lang/Object;
.source "BitmapPreFiller.java"


# instance fields
.field private final a:Ld2/h;

.field private final b:Lc2/c;

.field private final c:Lz1/a;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ld2/h;Lc2/c;Lz1/a;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lf2/a;->d:Landroid/os/Handler;

    .line 3
    iput-object p1, p0, Lf2/a;->a:Ld2/h;

    .line 4
    iput-object p2, p0, Lf2/a;->b:Lc2/c;

    .line 5
    iput-object p3, p0, Lf2/a;->c:Lz1/a;

    return-void
.end method
