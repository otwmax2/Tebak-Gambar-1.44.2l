###### Class com.google.firebase.crashlytics.FirebaseCrashlyticsKtxRegistrar (com.google.firebase.crashlytics.FirebaseCrashlyticsKtxRegistrar)
.class public final Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.kt"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;-><init>(Lt9/g;)V

    sput-object v0, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar;->Companion:Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;

    return-void
.end method

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

###### Class com.google.firebase.crashlytics.FirebaseCrashlyticsKtxRegistrar.a (com.google.firebase.crashlytics.FirebaseCrashlyticsKtxRegistrar$a)
.class public final Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKtxRegistrar$a;-><init>()V

    return-void
.end method
