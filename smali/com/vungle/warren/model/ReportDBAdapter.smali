###### Class com.vungle.warren.model.ReportDBAdapter (com.vungle.warren.model.ReportDBAdapter)
.class public Lcom/vungle/warren/model/ReportDBAdapter;
.super Ljava/lang/Object;
.source "ReportDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/DBAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/model/ReportDBAdapter$ReportColumns;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/warren/persistence/DBAdapter<",
        "Lcom/vungle/warren/model/Report;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATE_REPORT_TABLE_QUERY:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS report(_id INTEGER PRIMARY KEY AUTOINCREMENT, item_id TEXT UNIQUE,appId TEXT, placementId TEXT, adToken TEXT, incentivized SHORT, header_bidding SHORT, adStartTime NUMERIC, url TEXT, ad_duration NUMERIC, tt_download NUMERIC, campaign TEXT, videoViewed NUMERIC, ad_type TEXT, template_id TEXT, was_CTAC_licked SHORT, clicked_through TEXT, errors TEXT, user_actions TEXT, user_id TEXT, ordinal INT, videoLength NUMERIC, status INT, ad_size TEXT, init_timestamp NUMERIC, asset_download_duration NUMERIC,play_remote_url SHORT )"


# instance fields
.field private a:Lcom/google/gson/f;

.field b:Ljava/lang/reflect/Type;

.field c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    .line 3
    new-instance v0, Lcom/vungle/warren/model/ReportDBAdapter$1;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/ReportDBAdapter$1;-><init>(Lcom/vungle/warren/model/ReportDBAdapter;)V

    .line 4
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/ReportDBAdapter;->b:Ljava/lang/reflect/Type;

    .line 5
    new-instance v0, Lcom/vungle/warren/model/ReportDBAdapter$2;

    invoke-direct {v0, p0}, Lcom/vungle/warren/model/ReportDBAdapter$2;-><init>(Lcom/vungle/warren/model/ReportDBAdapter;)V

    .line 6
    invoke-virtual {v0}, Lg7/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/warren/model/ReportDBAdapter;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Report;
    .registers 7

    .line 2
    new-instance v0, Lcom/vungle/warren/model/Report;

    invoke-direct {v0}, Lcom/vungle/warren/model/Report;-><init>()V

    const-string v1, "ad_duration"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->k:J

    const-string v1, "adStartTime"

    .line 4
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->h:J

    const-string v1, "adToken"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    const-string v1, "ad_type"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    const-string v1, "appId"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    const-string v1, "campaign"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    const-string v1, "ordinal"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Report;->v:I

    const-string v1, "placementId"

    .line 10
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    const-string v1, "template_id"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    const-string v1, "tt_download"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->l:J

    const-string v1, "url"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    const-string v1, "user_id"

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    const-string v1, "videoLength"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->j:J

    const-string v1, "videoViewed"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Report;->o:I

    const-string v1, "was_CTAC_licked"

    .line 17
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Report;->x:Z

    const-string v1, "incentivized"

    .line 18
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Report;->e:Z

    const-string v1, "header_bidding"

    .line 19
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Report;->f:Z

    const-string v1, "status"

    .line 20
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/vungle/warren/model/Report;->a:I

    const-string v1, "ad_size"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/warren/model/Report;->w:Ljava/lang/String;

    const-string v1, "init_timestamp"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    const-string v1, "asset_download_duration"

    .line 23
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    const-string v1, "play_remote_url"

    .line 24
    invoke-static {p1, v1}, Lcom/vungle/warren/persistence/ContentValuesUtil;->getBoolean(Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/warren/model/Report;->g:Z

    .line 25
    iget-object v1, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    const-string v2, "clicked_through"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/warren/model/ReportDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    iget-object v2, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    const-string v3, "errors"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/warren/model/ReportDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 27
    iget-object v3, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    const-string v4, "user_actions"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v4, p0, Lcom/vungle/warren/model/ReportDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz v1, :cond_110

    .line 28
    iget-object v3, v0, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_110
    if-eqz v2, :cond_117

    .line 29
    iget-object v1, v0, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_117
    if-eqz p1, :cond_11e

    .line 30
    iget-object v1, v0, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11e
    return-object v0
.end method

.method public bridge synthetic fromContentValues(Landroid/content/ContentValues;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/ReportDBAdapter;->fromContentValues(Landroid/content/ContentValues;)Lcom/vungle/warren/model/Report;

    move-result-object p1

    return-object p1
.end method

.method public tableName()Ljava/lang/String;
    .registers 2

    const-string v0, "report"

    return-object v0
.end method

.method public toContentValues(Lcom/vungle/warren/model/Report;)Landroid/content/ContentValues;
    .registers 6

    .line 2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/vungle/warren/model/Report;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->k:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "ad_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->h:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "adStartTime"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->c:Ljava/lang/String;

    const-string v2, "adToken"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->s:Ljava/lang/String;

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->d:Ljava/lang/String;

    const-string v2, "appId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->m:Ljava/lang/String;

    const-string v2, "campaign"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-boolean v1, p1, Lcom/vungle/warren/model/Report;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "incentivized"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 11
    iget-boolean v1, p1, Lcom/vungle/warren/model/Report;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "header_bidding"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    iget v1, p1, Lcom/vungle/warren/model/Report;->v:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ordinal"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 13
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->b:Ljava/lang/String;

    const-string v2, "placementId"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->t:Ljava/lang/String;

    const-string v2, "template_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->l:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tt_download"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 16
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->i:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->u:Ljava/lang/String;

    const-string v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->j:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "videoLength"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 19
    iget v1, p1, Lcom/vungle/warren/model/Report;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "videoViewed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    iget-boolean v1, p1, Lcom/vungle/warren/model/Report;->x:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "was_CTAC_licked"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    iget-object v1, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/vungle/warren/model/Report;->p:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/vungle/warren/model/ReportDBAdapter;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_actions"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v1, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/vungle/warren/model/Report;->q:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/vungle/warren/model/ReportDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clicked_through"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lcom/vungle/warren/model/ReportDBAdapter;->a:Lcom/google/gson/f;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/vungle/warren/model/Report;->r:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/vungle/warren/model/ReportDBAdapter;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/f;->u(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errors"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget v1, p1, Lcom/vungle/warren/model/Report;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iget-object v1, p1, Lcom/vungle/warren/model/Report;->w:Ljava/lang/String;

    const-string v2, "ad_size"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->initTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "init_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 27
    iget-wide v1, p1, Lcom/vungle/warren/model/Report;->assetDownloadDuration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "asset_download_duration"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    iget-boolean p1, p1, Lcom/vungle/warren/model/Report;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "play_remote_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public bridge synthetic toContentValues(Ljava/lang/Object;)Landroid/content/ContentValues;
    .registers 2

    .line 1
    check-cast p1, Lcom/vungle/warren/model/Report;

    invoke-virtual {p0, p1}, Lcom/vungle/warren/model/ReportDBAdapter;->toContentValues(Lcom/vungle/warren/model/Report;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

###### Class com.vungle.warren.model.ReportDBAdapter.AnonymousClass1 (com.vungle.warren.model.ReportDBAdapter$1)
.class Lcom/vungle/warren/model/ReportDBAdapter$1;
.super Lg7/a;
.source "ReportDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/ReportDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/ReportDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/ReportDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/ReportDBAdapter$1;->d:Lcom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.ReportDBAdapter.AnonymousClass2 (com.vungle.warren.model.ReportDBAdapter$2)
.class Lcom/vungle/warren/model/ReportDBAdapter$2;
.super Lg7/a;
.source "ReportDBAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/ReportDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg7/a<",
        "Ljava/util/ArrayList<",
        "Lcom/vungle/warren/model/Report$UserAction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/vungle/warren/model/ReportDBAdapter;


# direct methods
.method constructor <init>(Lcom/vungle/warren/model/ReportDBAdapter;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/vungle/warren/model/ReportDBAdapter$2;->d:Lcom/vungle/warren/model/ReportDBAdapter;

    invoke-direct {p0}, Lg7/a;-><init>()V

    return-void
.end method

###### Class com.vungle.warren.model.ReportDBAdapter.ReportColumns (com.vungle.warren.model.ReportDBAdapter$ReportColumns)
.class public interface abstract Lcom/vungle/warren/model/ReportDBAdapter$ReportColumns;
.super Ljava/lang/Object;
.source "ReportDBAdapter.java"

# interfaces
.implements Lcom/vungle/warren/persistence/IdColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/model/ReportDBAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReportColumns"
.end annotation


# static fields
.field public static final COLUMN_AD_DURATION:Ljava/lang/String; = "ad_duration"

.field public static final COLUMN_AD_SIZE:Ljava/lang/String; = "ad_size"

.field public static final COLUMN_AD_START_TIME:Ljava/lang/String; = "adStartTime"

.field public static final COLUMN_AD_TOKEN:Ljava/lang/String; = "adToken"

.field public static final COLUMN_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final COLUMN_APP_ID:Ljava/lang/String; = "appId"

.field public static final COLUMN_ASSET_DOWNLOAD_DURATION:Ljava/lang/String; = "asset_download_duration"

.field public static final COLUMN_CAMPAIGN:Ljava/lang/String; = "campaign"

.field public static final COLUMN_CLICKED_THROUGH:Ljava/lang/String; = "clicked_through"

.field public static final COLUMN_ERRORS:Ljava/lang/String; = "errors"

.field public static final COLUMN_HEADERBIDDING:Ljava/lang/String; = "header_bidding"

.field public static final COLUMN_INCENTIVIZED:Ljava/lang/String; = "incentivized"

.field public static final COLUMN_INIT_TIMESTAMP:Ljava/lang/String; = "init_timestamp"

.field public static final COLUMN_ORDINAL:Ljava/lang/String; = "ordinal"

.field public static final COLUMN_PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final COLUMN_PLAY_REMOTE_URL:Ljava/lang/String; = "play_remote_url"

.field public static final COLUMN_REPORT_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TEMPATE_ID:Ljava/lang/String; = "template_id"

.field public static final COLUMN_TT_DOWNLOAD:Ljava/lang/String; = "tt_download"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_USER_ACTIONS:Ljava/lang/String; = "user_actions"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field public static final COLUMN_VIDEO_LENGTH:Ljava/lang/String; = "videoLength"

.field public static final COLUMN_VIDEO_VIEWED:Ljava/lang/String; = "videoViewed"

.field public static final COLUMN_WAS_CTA_CLICKED:Ljava/lang/String; = "was_CTAC_licked"

.field public static final TABLE_NAME:Ljava/lang/String; = "report"
