###### Class com.android.installreferrer.api.InstallReferrerClient (com.android.installreferrer.api.InstallReferrerClient)
.class public abstract Lcom/android/installreferrer/api/InstallReferrerClient;
.super Ljava/lang/Object;
.source "InstallReferrerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/installreferrer/api/InstallReferrerClient$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$b;
    .registers 3

    .line 1
    new-instance v0, Lcom/android/installreferrer/api/InstallReferrerClient$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient$b;-><init>(Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient$a;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/android/installreferrer/api/ReferrerDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract c(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
.end method

###### Class com.android.installreferrer.api.InstallReferrerClient.a (com.android.installreferrer.api.InstallReferrerClient$a)
.class synthetic Lcom/android/installreferrer/api/InstallReferrerClient$a;
.super Ljava/lang/Object;
.source "InstallReferrerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.android.installreferrer.api.InstallReferrerClient.b (com.android.installreferrer.api.InstallReferrerClient$b)
.class public final Lcom/android/installreferrer/api/InstallReferrerClient$b;
.super Ljava/lang/Object;
.source "InstallReferrerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/installreferrer/api/InstallReferrerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/installreferrer/api/InstallReferrerClient$b;->a:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/installreferrer/api/InstallReferrerClient$b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/installreferrer/api/InstallReferrerClient;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/android/installreferrer/api/InstallReferrerClient$b;->a:Landroid/content/Context;

    if-eqz v0, :cond_a

    .line 2
    new-instance v1, Lcom/android/installreferrer/api/a;

    invoke-direct {v1, v0}, Lcom/android/installreferrer/api/a;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 3
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
