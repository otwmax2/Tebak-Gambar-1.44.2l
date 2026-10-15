###### Class i5.i1 (i5.i1)
.class public final Li5/i1;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Li5/a1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li5/a1<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field private final a:Li5/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li5/z0<",
            "TResultT;TCallbackT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li5/z0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/z0<",
            "TResultT;TCallbackT;>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li5/i1;->a:Li5/z0;

    .line 3
    iput-object p2, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const-string v1, "completion source cannot be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_60

    .line 2
    iget-object p1, p0, Li5/i1;->a:Li5/z0;

    iget-object v0, p1, Li5/z0;->s:Lcom/google/android/gms/internal/firebase_auth/zzej;

    if-eqz v0, :cond_44

    .line 3
    iget-object p2, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p1, p1, Li5/z0;->c:Lb5/g;

    .line 4
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lb5/g;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object p1

    iget-object v0, p0, Li5/i1;->a:Li5/z0;

    iget-object v1, v0, Li5/z0;->s:Lcom/google/android/gms/internal/firebase_auth/zzej;

    .line 5
    invoke-interface {v0}, Li5/e;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredential"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Li5/i1;->a:Li5/z0;

    .line 6
    invoke-interface {v0}, Li5/e;->zza()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reauthenticateWithCredentialWithData"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    goto :goto_3c

    .line 7
    :cond_38
    :goto_38
    iget-object v0, p0, Li5/i1;->a:Li5/z0;

    iget-object v0, v0, Li5/z0;->d:Lg5/s;

    .line 8
    :goto_3c
    invoke-static {p1, v1, v0}, Li5/o0;->c(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/gms/internal/firebase_auth/zzej;Lg5/s;)Lg5/m;

    move-result-object p1

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void

    .line 10
    :cond_44
    iget-object v0, p1, Li5/z0;->p:Lg5/d;

    if-eqz v0, :cond_56

    .line 11
    iget-object v1, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p1, Li5/z0;->q:Ljava/lang/String;

    iget-object p1, p1, Li5/z0;->r:Ljava/lang/String;

    .line 12
    invoke-static {p2, v0, v2, p1}, Li5/o0;->b(Lcom/google/android/gms/common/api/Status;Lg5/d;Ljava/lang/String;Ljava/lang/String;)Lb5/m;

    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void

    .line 14
    :cond_56
    iget-object p1, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Li5/o0;->a(Lcom/google/android/gms/common/api/Status;)Lb5/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void

    .line 15
    :cond_60
    iget-object p2, p0, Li5/i1;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method
