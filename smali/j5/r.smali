###### Class j5.r (j5.r)
.class final Lj5/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic a:Lj5/s;


# direct methods
.method constructor <init>(Lj5/s;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj5/r;->a:Lj5/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 3

    if-eqz p1, :cond_e

    .line 1
    iget-object p1, p0, Lj5/r;->a:Lj5/s;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lj5/s;->d(Lj5/s;Z)Z

    .line 2
    iget-object p1, p0, Lj5/r;->a:Lj5/s;

    invoke-virtual {p1}, Lj5/s;->a()V

    return-void

    .line 3
    :cond_e
    iget-object p1, p0, Lj5/r;->a:Lj5/s;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lj5/s;->d(Lj5/s;Z)Z

    .line 4
    iget-object p1, p0, Lj5/r;->a:Lj5/s;

    invoke-static {p1}, Lj5/s;->c(Lj5/s;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 5
    iget-object p1, p0, Lj5/r;->a:Lj5/s;

    invoke-static {p1}, Lj5/s;->e(Lj5/s;)Lj5/f;

    move-result-object p1

    invoke-virtual {p1}, Lj5/f;->a()V

    :cond_25
    return-void
.end method
