###### Class com.vungle.warren.model.AnalyticUrlDBAdapter (com.vungle.warren.model.AnalyticUrlDBAdapter)
.class public Lcom/vungle/warren/model/AnalyticUrlDBAdapter;
.super Ljava/lang/Object;
.source "AnalyticUrlDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/AnalyticUrlDBAdapter$AnalyticsUrlColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/AnalyticUrl;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_ANALYTICS_URL_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS analytic_url(_id INTEGER PRIMARY KEY AUTOINCREMENT,  item_id TEXT UNIQUE)"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/AnalyticUrl;
    .registers 3

    const-string v0, "item_id"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-direct {v0, p1}, Lcom/vungle/warren/model/AnalyticUrl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AnalyticUrlDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/AnalyticUrl;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "analytic_url"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/AnalyticUrl;)Landroid/content/ContentValues;
    .registers 4

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/vungle/warren/model/AnalyticUrl;->url:Ljava/lang/String;

    const-string v1, "item_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/AnalyticUrl;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/AnalyticUrlDBAdapter;->toContentValues(Lcom/vungle/warren/model/AnalyticUrl;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.model.AnalyticUrlDBAdapter.AnalyticsUrlColumns (com.vungle.warren.model.AnalyticUrlDBAdapter$AnalyticsUrlColumns)
.class public interface abstract Lcom/vungle/warren/model/AnalyticUrlDBAdapter$AnalyticsUrlColumns;
.super Ljava/lang/Object;
.source "AnalyticUrlDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/AnalyticUrlDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnalyticsUrlColumns"
.end annotation


# static fields
.field public static final TABLE_NAME:Ljava/lang/String; = "analytic_url"
