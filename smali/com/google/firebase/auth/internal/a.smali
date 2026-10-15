###### Class com.google.firebase.auth.internal.a (com.google.firebase.auth.internal.a)
.class final Lcom/google/firebase/auth/internal/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic o:Lcom/google/firebase/auth/internal/FederatedSignInActivity;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/a;->o:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/a;->o:Lcom/google/firebase/auth/internal/FederatedSignInActivity;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->F(Lcom/google/firebase/auth/internal/FederatedSignInActivity;)V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/firebase/auth/internal/FederatedSignInActivity;->C(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
