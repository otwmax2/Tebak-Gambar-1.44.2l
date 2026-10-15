###### Class com.google.firebase.installations.ktx.FirebaseInstallationsKtxRegistrar (com.google.firebase.installations.ktx.FirebaseInstallationsKtxRegistrar)
.class public final Lcom/google/firebase/installations/ktx/FirebaseInstallationsKtxRegistrar;
.super Ljava/lang/Object;
.source "Installations.kt"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk5/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Li9/j;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
