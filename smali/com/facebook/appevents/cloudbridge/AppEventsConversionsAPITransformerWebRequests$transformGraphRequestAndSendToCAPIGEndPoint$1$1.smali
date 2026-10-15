###### Class com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1 (com.facebook.appevents.cloudbridge.AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1)
.class final Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;
.super Lt9/n;
.source "AppEventsConversionsAPITransformerWebRequests.kt"

# interfaces
.implements Ls9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->transformGraphRequestAndSendToCAPIGEndPoint$lambda-0(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lt9/n;",
        "Ls9/p<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lh9/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $processedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->$processedEvents:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lt9/n;-><init>(I)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->invoke$lambda-0(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method

.method private static final invoke$lambda-0(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 4

    const-string v0, "$processedEvents"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->access$getACCEPTABLE_HTTP_RESPONSE$p()Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0, p0}, Li9/j;->p(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 2
    sget-object v0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->INSTANCE:Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, p1, v1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests;->handleError$facebook_core_release(Ljava/lang/Integer;Ljava/util/List;I)V

    :cond_15
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->invoke(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object p1, Lh9/t;->a:Lh9/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 2
    sget-object p1, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    iget-object p1, p0, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->$processedEvents:Ljava/util/List;

    new-instance v0, Lcom/facebook/appevents/cloudbridge/c;

    invoke-direct {v0, p2, p1}, Lcom/facebook/appevents/cloudbridge/c;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    invoke-static {v0}, Lcom/facebook/internal/Utility;->runOnNonUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.facebook.appevents.cloudbridge.c (com.facebook.appevents.cloudbridge.c)
.class public final synthetic Lcom/facebook/appevents/cloudbridge/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Ljava/lang/Integer;

.field public final synthetic p:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/cloudbridge/c;->o:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/facebook/appevents/cloudbridge/c;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/appevents/cloudbridge/c;->o:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/facebook/appevents/cloudbridge/c;->p:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/appevents/cloudbridge/AppEventsConversionsAPITransformerWebRequests$transformGraphRequestAndSendToCAPIGEndPoint$1$1;->c(Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method
