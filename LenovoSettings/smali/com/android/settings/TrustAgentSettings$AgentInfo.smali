.class public final Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;
.super Ljava/lang/Object;
.source "TrustAgentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/TrustAgentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AgentInfo"
.end annotation


# instance fields
.field component:Landroid/content/ComponentName;

.field public icon:Landroid/graphics/drawable/Drawable;

.field label:Ljava/lang/CharSequence;

.field preference:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;)I
    .locals 2
    .param p1, "other"    # Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 59
    instance-of v0, p1, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    check-cast p1, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/TrustAgentSettings$AgentInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method