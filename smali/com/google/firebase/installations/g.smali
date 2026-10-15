###### Class com.google.firebase.installations.g (com.google.firebase.installations.g)
.class public abstract Lcom/google/firebase/installations/g;
.super Ljava/lang/Object;
.source "InstallationTokenResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/installations/g$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/firebase/installations/g$a;
    .registers 1

    .line 1
    new-instance v0, Lcom/google/firebase/installations/a$b;

    invoke-direct {v0}, Lcom/google/firebase/installations/a$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()J
.end method

.method public abstract d()J
.end method

###### Class com.google.firebase.installations.g.a (com.google.firebase.installations.g$a)
.class public abstract Lcom/google/firebase/installations/g$a;
.super Ljava/lang/Object;
.source "InstallationTokenResult.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/installations/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/google/firebase/installations/g;
.end method

.method public abstract b(Ljava/lang/String;)Lcom/google/firebase/installations/g$a;
.end method

.method public abstract c(J)Lcom/google/firebase/installations/g$a;
.end method

.method public abstract d(J)Lcom/google/firebase/installations/g$a;
.end method
