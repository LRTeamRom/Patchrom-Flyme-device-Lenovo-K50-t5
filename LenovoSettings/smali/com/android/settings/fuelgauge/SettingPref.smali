.class public Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;
.super Ljava/lang/Object;
.source "SettingPref.java"


# static fields
.field public static final TYPE_GLOBAL:I = 0x1

.field public static final TYPE_SYSTEM:I = 0x2


# instance fields
.field protected final mDefault:I

.field protected mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

.field private final mKey:Ljava/lang/String;

.field protected final mSetting:Ljava/lang/String;

.field protected mTwoState:Landroid/preference/TwoStatePreference;

.field protected final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:[I


# direct methods
.method public varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "def"    # I
    .param p5, "values"    # [I

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mType:I

    .line 49
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mKey:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mSetting:Ljava/lang/String;

    .line 51
    iput p4, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDefault:I

    .line 52
    iput-object p5, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mValues:[I

    .line 53
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mType:I

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->getUriFor(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mUri:Landroid/net/Uri;

    .line 54
    return-void
.end method

.method protected static getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 146
    packed-switch p0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 148
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 150
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getUriFor(ILjava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 128
    :pswitch_0
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "type"    # I
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "value"    # I

    .prologue
    .line 136
    packed-switch p0, :pswitch_data_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 138
    :pswitch_0
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :pswitch_1
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "value"    # I

    .prologue
    .line 61
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public init(Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;)Landroid/preference/Preference;
    .locals 9
    .param p1, "settings"    # Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 66
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mKey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 67
    .local v4, "p":Landroid/preference/Preference;
    if-eqz v4, :cond_0

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->isApplicable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/flyme/deviceoriginalsettings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 69
    const/4 v4, 0x0

    .line 71
    :cond_0
    instance-of v6, v4, Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_2

    move-object v6, v4

    .line 72
    check-cast v6, Landroid/preference/TwoStatePreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    .line 79
    :cond_1
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->update(Landroid/content/Context;)V

    .line 80
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v6, :cond_3

    .line 81
    new-instance v6, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref$1;

    invoke-direct {v6, p0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref$1;-><init>(Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    .line 101
    :goto_0
    return-object v6

    .line 73
    :cond_2
    instance-of v6, v4, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    if-eqz v6, :cond_1

    move-object v6, v4

    .line 74
    check-cast v6, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    iput-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    .line 75
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mValues:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_1

    aget v5, v0, v2

    .line 76
    .local v5, "value":I
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->getCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "value":I
    :cond_3
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    if-eqz v6, :cond_4

    .line 92
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    new-instance v7, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref$2;

    invoke-direct {v7, p0, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref$2;-><init>(Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;Landroid/content/Context;)V

    invoke-virtual {v6, v7}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setCallback(Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;)V

    .line 99
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    goto :goto_0

    .line 101
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method protected setSetting(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 105
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mSetting:Ljava/lang/String;

    invoke-static {v0, v1, v2, p2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->putInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    iget v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mType:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mSetting:Ljava/lang/String;

    iget v4, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDefault:I

    invoke-static {v1, v2, v3, v4}, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->getInt(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "val":I
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v1, :cond_2

    .line 119
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mTwoState:Landroid/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 123
    :cond_0
    :goto_1
    return-void

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/SettingPref;->mDropDown:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    goto :goto_1
.end method
