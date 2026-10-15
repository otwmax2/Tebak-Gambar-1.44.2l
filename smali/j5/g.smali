###### Class j5.g (j5.g)
.class final Lj5/g;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic a:Lj5/e;


# direct methods
.method constructor <init>(Lj5/e;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lj5/g;->a:Lj5/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .registers 4

    .line 1
    instance-of p1, p1, Lb5/p;

    if-eqz p1, :cond_17

    .line 2
    invoke-static {}, Lj5/f;->d()Lcom/google/android/gms/common/logging/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lj5/g;->a:Lj5/e;

    iget-object p1, p1, Lj5/e;->p:Lj5/f;

    invoke-virtual {p1}, Lj5/f;->b()V

    :cond_17
    return-void
.end method
