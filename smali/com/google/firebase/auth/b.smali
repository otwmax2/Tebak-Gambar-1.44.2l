###### Class com.google.firebase.auth.b (com.google.firebase.auth.b)
.class final Lcom/google/firebase/auth/b;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lj5/c;
.implements Lj5/i;


# instance fields
.field private final synthetic a:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/b;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase_auth/zzff;Lg5/s;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/b;->a:Lcom/google/firebase/auth/FirebaseAuth;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/google/firebase/auth/FirebaseAuth;->j(Lg5/s;Lcom/google/android/gms/internal/firebase_auth/zzff;ZZ)V

    return-void
.end method

.method public final v0(Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result p1

    const/16 v0, 0x4273

    if-eq p1, v0, :cond_10

    const/16 v0, 0x427d

    if-eq p1, v0, :cond_10

    const/16 v0, 0x426d

    if-ne p1, v0, :cond_15

    .line 2
    :cond_10
    iget-object p1, p0, Lcom/google/firebase/auth/b;->a:Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->e()V

    :cond_15
    return-void
.end method
