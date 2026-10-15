###### Class j5.e (j5.e)
.class final Lj5/e;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final o:Ljava/lang/String;

.field final synthetic p:Lj5/f;


# direct methods
.method constructor <init>(Lj5/f;Ljava/lang/String;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lj5/e;->p:Lj5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj5/e;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 1
    iget-object v0, p0, Lj5/e;->o:Ljava/lang/String;

    invoke-static {v0}, Lb5/g;->n(Ljava/lang/String;)Lb5/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lb5/g;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lg5/s;

    move-result-object v1

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->a(Z)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 5
    invoke-static {}, Lj5/f;->d()Lcom/google/android/gms/common/logging/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/common/logging/Logger;->g(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance v1, Lj5/g;

    invoke-direct {v1, p0}, Lj5/g;-><init>(Lj5/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->f(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    :cond_29
    return-void
.end method
